import os
import util
from argparse import ArgumentParser

class BaseConfig:
    # data
    kaggle_data_folder = "/home/vincent/Kaggle/data/ventilator-pressure-prediction"
    input_folder = "/home/vincent/Kaggle/GBVPP/input/"
    output_folder = "/home/vincent/Kaggle/GBVPP/output/"

    # general
    debug = False
    model_version = "base_version"
    model_module = "BASE"
    PL_folder = None
    seed = 48
    ckpt_folder = None
    use_lr_finder = False

    # preprocessing
    low_q = 5
    high_q = 95
    unit_var = True
    strict_scale = True
    fe_type = "own"

    # LSTM
    hidden = [512, 256, 128, 64]
    bidirectional = True
    nh = 256
    do_prob = 0.1

    # training
    epochs = 300
    es = 20
    train_folds = [0, 1, 2, 3, 4]
    batch_size = 512
    lr = 1e-3
    weight_decay = 1e-4
    warmup = 10
    scheduler = 'cosineWithWarmUp'
    use_in_phase_only = True

    # swa
    ## TODO: add SWA
    use_swa = False

    # logging
    use_wandb = True
    wandb_project = "GBVPP"
    wandb_key_path = "/home/vincent/Kaggle/GBVPP/input/key.txt"
    wandb_post = ""
    print_num_steps = 100

    # speed
    num_workers = 8


class LSTM4_do01(BaseConfig):
    model_version = "4LSTM_do01"
    model_module = "CH"
    hidden = [512, 256, 128, 64]
    use_in_phase_only = False


class LSTM4_do03(LSTM4_do01):
    model_version = "4LSTM_do03"
    do_prob = 0.3

class LSTM4_do05(LSTM4_do01):
    model_version = "4LSTM_do05"
    do_prob = 0.5


class LSTM5_do01(BaseConfig):
    model_version = "5LSTM_do01"
    hidden = [1024, 512, 256, 128, 64]
    do_prob = 0.1


class Fork(BaseConfig):
    model_version = "fork"
    model_module = "BASE"
    low_q = 25
    high_q = 75
    batch_size = 1024
    unit_var = False
    fe_type = "fork"
    hidden = [400, 300, 200, 100]
    use_in_phase_only = False

    scheduler = 'ReduceLROnPlateau'
    factor = 0.5
    patience = 10


def update_config(config):
    config.model_output_folder = config.output_folder + config.model_version + "/"
    if config.ckpt_folder:
        config.ckpt_folder = config.model_output_folder
    if config.model_output_folder and not os.path.exists(config.model_output_folder):
        os.makedirs(config.model_output_folder)
    if config.debug:
        config.epochs = 1
        config.train_folds = [0]

    config.device = util.get_device(config)
    print("Model Output Folder:", config.model_output_folder)
    return config


config_dict = {"base": BaseConfig, "Fork": Fork,
               "LSTM4_do01": LSTM4_do01, "LSTM4_do03": LSTM4_do03,
               "LSTM4_do05": LSTM4_do05, "LSTM5_do01": LSTM5_do01,
}


def read_config(name="base", debug=False):
    assert name in config_dict, "name is not in config_list.keys()" + list(config_dict.keys())
    config = config_dict[name]
    if debug:
        print("---- DEBUG -----")
        config.debug = debug
    return config


def prepare_args():
    parser = ArgumentParser()
    parser.add_argument('--gpu', nargs='+', type=int, default=[0, 1],  help='used gpu')
    parser.add_argument('--model_config', type=str, help='configuration name for this run')
    parser.add_argument('--debug', nargs='?', type=int, const=0, help='in debug mode or not')
    args = parser.parse_args()
    return args
