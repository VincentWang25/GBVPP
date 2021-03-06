#!/bin/bash

# experiment 1018
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM4_do005 --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM4_do005 --train_folds 0 --debug 0 --gpu 0

# experiment 1019
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM4_do0 --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM4_do0 --train_folds 0 --debug 0 --gpu 0
#
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_do0 --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_do0 --train_folds 0 --debug 0 --gpu 0

#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM4_do0_epoch300 --train_folds 3 4 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM4_do0_epoch300 --train_folds 0 1 2 3 4 --debug 0 --gpu 0
#
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM4_do0_epoch300_ROP --train_folds 0 1 2 3 4 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM4_do0_epoch300_ROP --train_folds 0 1 2 3 4 --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=0,1 python3 train.py --model_config LSTM4_base_epoch300_ROP_NoUnitVar --train_folds 1 2 3  --debug 0 --gpu 0 1
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM4_base_epoch300_ROP_FC128 --train_folds 1 2 --debug 0 --gpu 0

# check the effect of autocast
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM4_base_epoch300_ROP --train_folds 0 --debug 0 --gpu 0
# check classification
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config Base_Cls --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config Cls_CH_do01 --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config Cls_CH_do01 --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config Cls_CH_do025 --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config Cls_CH_do05 --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0,1 python3 train.py --model_config Fork2 --train_folds 0 --debug 0 --gpu 0 1

# 1023
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config New_base --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config New_base_InPhaseOnly --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config New_base_OutPhase01 --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config New_base_noUnitVar --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config New_base --train_folds 1 2 3 4 --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config New_base_fake --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config New_base_fake --train_folds 0 --debug 0 --gpu 0


#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_fake --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config base_fake --train_folds 0 --debug 0 --gpu 0
#
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_hb05 --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_hb01 --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_fc128 --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_UnitVar --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_cls --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config ch_cls_do01 --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_fake --train_folds 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config base_fake --train_folds 0 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config Base --train_folds 0 1 2 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0,1 python3 train.py --model_config PulpFiction --train_folds 0 1 --debug 0 --gpu 0 1
# CUDA_AVAILABLE_DEVICES=0,1 python3 infer.py --model_config PulpFiction --train_folds 0 1 --debug 0 --gpu 0 1

# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_better --train_folds 0 1 2 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_better_PL --train_folds 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config base_better --train_folds 0 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config base_better_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 0

#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_better_OP01 --train_folds 0 1 2 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config base_better_OP01 --train_folds 0 1 2 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_better_OP01_noRCTogether --train_folds 0 1 2 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config base_better_OP01_noRCTogether --train_folds 0 1 2 --debug 0 --gpu 0

#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_transformer_Layer3 --train_folds 0 --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_transformer_bigger --train_folds 0 1 2  --debug 0 --gpu 0
#CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config base_transformer_bigger --train_folds 0 1 2 3 4  --debug 0 --gpu 0
# kaggle competitions submit -f ./output/base_transformer_bigger/ -m "base_transformer_bigger"
#CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config base_transformer_do03 --train_folds 0  --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM4_base_epoch300_ROP_bn_2 --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM4_base_epoch300_ROP_bn_2 --train_folds 0  --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_OP01 --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_OP01 --train_folds 0  --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_OP01_fc128 --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_OP01_fc128 --train_folds 0  --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_OP01_huber025 --train_folds 1 2  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_OP01_huber025 --train_folds 0 1 2 3 4  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_OP01_huber025_PL2 --train_folds 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_OP01_huber025_PL3 --train_folds 0 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_OP01_huber025_PL3 --train_folds 0 1 2 3 4  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_OP01_huber025_bn --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_OP01_huber025_bn --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_OP01_huber025_bn_autoCast --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config GRU5_OP01_huber025_bn --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_OP01_huber025_bn_autoCast --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_do04 --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_do02_autoCast --train_folds 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_CLS_do02_autoCast --train_folds 0 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_CLS_do02_autoCast --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_REG --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_DO02_customLoss --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM3_TSF4_DO0_dim512 --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM3_TSF2 --train_folds 0 --debug 0 --gpu 0


# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_REG_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_REG_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM3_TSF2 --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM3_TSF2 --train_folds 0 --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM_Fork_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM_Fork_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_DO025_OP01_physics --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_DO02_CH01_OP01_physics_SiLU --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_DO02_CH01_OP01_physics_ADAM --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_DO02_CH01_OP01_physics_RangerLars --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_DO02_CH01_OP01_physics_SiLU --train_folds 1 2 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_CLS_DO02_CH01_OP01_physics_SiLU --train_folds 0 1 2 3 4 --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_DO02_CH01_IPOnly_SiLU_ADAM_PL --train_folds 0 1 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config noBatchNorm --train_folds 0 1 2 --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_Reg_Better_useCluster --train_folds 0 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_Better_useCluster_CHDO02 --train_folds 0 --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_REG_PL_better --train_folds 0 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_REG_PL_better --train_folds 0 1 2 3 4 --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_REG_physics_PL_better_2 --train_folds 0 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_REG_physics_PL_better_2 --train_folds 0 1 2 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_CH04_IPOnly_SiLU_ADAM_PL3 --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_DO02_CH04_IPOnly_SiLU_ADAM_PL3 --train_folds 1 2 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_FIXED_NoErr1 --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_FIXED_Lamb_LR2e3_BS1024 --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_LARGER512x3842x2562 --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_LARGER512x3842x2562_DO03_CH04 --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_REG_NoCrossSectional --train_folds 0  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_REG_physics_noCS_PL --train_folds 0 --debug 0 --gpu 0

CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_FIXED_NoErr1_noCS_PL --train_folds 3 4 --debug 0 --gpu 0
CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_CLS_FIXED_NoErr1_noCS_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 0

CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_LARGER512x3842x2562_noCS_PL --train_folds 3 4  --debug 0 --gpu 0

CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_REG_physics_noCS_PL --train_folds 1 2 3 4 --debug 0 --gpu 0
CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_REG_physics_noCS_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 0

# TODO
CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_REG_LARGER_physics_noCS_noErr1_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 0
CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM5_REG_LARGER_physics_noCS_noErr1_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 0

CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_LARGER512x3842x2562_NoErr1_noCS_PL --train_folds 0 --debug 0 --gpu 0
