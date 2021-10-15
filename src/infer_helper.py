from tqdm import tqdm
from torch import nn
from torch.utils.data import DataLoader
from torch.optim.swa_utils import AveragedModel
from dataset import *
import models


def get_pred(loader, model, device):
    preds = []
    for step, batch in enumerate(loader, 1):
        if step % 500 == 0:
            print("step {}/{}".format(step, len(loader)))
        with torch.no_grad():
            X = batch[0].to(device)
            outputs = model(X)
            outputs = outputs.squeeze().sigmoid().cpu().detach().numpy()
            preds.append(outputs)
    predictions = np.concatenate(preds)
    predictions = predictions.flatten()
    return predictions


def removeDPModule(state_dict):
    return {key.replace("module.", ""): value for key, value in state_dict.items()}


def get_test_avg(test_df, config):
    test_df['pressure'] = 0
    test_avg = test_df[['id', 'pressure']].copy()
    for fold in tqdm(config.train_folds):
        X_test, y_test, w_test = prepare_train_valid(test_df, config, fold)
        data_retriever = VPP(X_test, y_test, w_test)
        data_loader = DataLoader(data_retriever,
                                 batch_size=config.batch_size,
                                 shuffle=False,
                                 num_workers=config.num_workers, pin_memory=True, drop_last=False)

        model = models.Model(X_test.shape[-1], config)
        if config.use_swa:
            swa_model = AveragedModel(model)
            checkpoint = torch.load(f'{config.model_output_folder}/Fold_{fold}_swa_model.pth')
            model = swa_model
            model.load_state_dict(removeDPModule(checkpoint['model_swa_state_dict']))
        else:
            checkpoint = torch.load(f'{config.model_output_folder}/Fold_{fold}_best_model.pth')
            model.load_state_dict(removeDPModule(checkpoint['model_state_dict']))
        model.to(device=config.device)
        if config.use_dp and torch.cuda.device_count() > 1:
            model = nn.DataParallel(model)
        model.eval()
        test_avg[f"preds_fold{fold}"] = get_pred(data_loader, model, config.device)
        test_avg["pressure"] = test_avg["pressure"] + test_avg[f"preds_fold{fold}"] / len(config.train_folds)
        test_avg[["id", f"preds_fold{fold}"]].to_csv(config.model_output_folder + f"/test_fold{fold}.csv", index=False)
    test_avg.to_csv(config.model_output_folder + f"/test_pred_all.csv", index=False)
    test_avg[['id', 'pressure']].to_csv(config.model_output_folder + f"/submission.csv", index=False)
    print(test_avg['pressure'].describe())
    print("test file saved to:", config.model_output_folder + f"/submission.csv")
    return test_avg
