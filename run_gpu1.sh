#!/bin/bash

# experiment 1018
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_do0_IP --train_folds 1 2 3 4 --debug 0 --gpu 1

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_do0_IP --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM4_do0_IP --train_folds 0 --debug 0 --gpu 1

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_do0_IP --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_do0_IP --train_folds 0 --debug 0 --gpu 1
#
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_epoch300 --train_folds 2 3 4 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM4_base_epoch300 --train_folds 0 1 2 3 4 --debug 0 --gpu 1
#
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_epoch300_ROP --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM4_base_epoch300_ROP --train_folds 0 --debug 0 --gpu 1

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_Huber_delta025 --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_Huber_delta05 --train_folds 0 --debug 0 --gpu 1

#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_Huber_delta05_PL_fc128 --train_folds 0 1 2 3 4 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM4_base_Huber_delta05_PL_fc128 --train_folds 0 1 2 3 4 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_Huber_delta1 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM4_base_Huber_delta1 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_Huber_delta2 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM4_base_Huber_delta2 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_epoch300_ROP_FC128 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM4_base_epoch300_ROP_FC128 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_epoch300_ROP_NoUnitVar --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM4_base_epoch300_ROP_NoUnitVar --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_epoch300_ROP_FC128 --train_folds 3 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_epoch300_ROP_noAutoCast --train_folds 0 --debug 0 --gpu 1

#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM_base_new_fc128 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM_base_new_fc128_hb01 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM_base_new_fc128_hb025 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM_base_new_fc128_hb05 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_epoch300_ROP_RangerLars --train_folds 0 --debug 0 --gpu 1

#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config Cls_CH_do0 --train_folds 0 --debug 0 --gpu 1


# 1023
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config New_base_hb025 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config New_CH_do0 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config New_CH_do01 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config New_CH_do01_CLS --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config New_base_hb025 --train_folds 1 2 3 4 --debug 0 --gpu 1

#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config New_combined_good --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config New_combined_good --train_folds 1 2 3 4 --debug 0 --gpu 1


#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config Base --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_base_epoch300_ROP_bn --train_folds 0 --debug 0 --gpu 1

#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_fork --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_no_strict_scale --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_IP_only --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_OP01 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_hb025 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config ch_cls_do025 --train_folds 0 --debug 0 --gpu 1

#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_better --train_folds 3 4 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_better_PL --train_folds 0 1 2 --debug 0 --gpu 1

# CUDA_AVAILABLE_DEVICES=0,1 python3 train.py --model_config base_better_OP01_lossMAE --train_folds 0 --debug 0 --gpu 0 1
#CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config base_better_OP01_lossMAE --train_folds 0 1 2 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_better_OP01_WarmUp --train_folds 0 1 2 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config base_better_OP01_WarmUp --train_folds 0 1 2 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=0,1 python3 train.py --model_config base_better2 --train_folds 0 --debug 0 --gpu 0 1


#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_transformer --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_transformer_DM512 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_transformer_do02 --train_folds 0 --debug 0 --gpu 1
#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_transformer_bigger --train_folds 3 4  --debug 0 --gpu 1

#CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config base_transformer_do03_DM512 --train_folds 0  --debug 0 --gpu 1
# best
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM4_base_epoch300_ROP_bn_LSTM5 --train_folds 0 1 2 3 4  --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=0 python3 infer.py --model_config LSTM4_base_epoch300_ROP_bn_LSTM5 --train_folds 0 1 2 3 4  --debug 0 --gpu 0

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM6 --train_folds 0  --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM6 --train_folds 0  --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM7 --train_folds 0  --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM7 --train_folds 0  --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM8 --train_folds 0  --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM8 --train_folds 0  --debug 0 --gpu 1

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM4_unitVar --train_folds 0 1 2 3 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM4_unitVar --train_folds 0 1 2 3 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_OP01_huber025 --train_folds 3 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_OP01_huber025_PL2 --train_folds 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_OP01_huber025_PL2 --train_folds 0 1 2 3 4 --debug 0 --gpu 1

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_do02 --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_do02 --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_do02_autoCast --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config Model_2RNN --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config Model_2RNN --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_do02_autoCast --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config Model_2RNN_5LSTM_4GRU --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02 --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM3_TSF2 --train_folds 0 --debug 0 --gpu 1

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_IPOnly --train_folds 0 --debug 0 --gpu 1

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_OP01_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_DO02_OP01_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 1

# CUDA_AVAILABLE_DEVICES=0,1 python3 train.py --model_config LSTM7_REG_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 0 1
# CUDA_AVAILABLE_DEVICES=0,1 python3 infer.py --model_config LSTM7_REG_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 0 1

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_OP01_physics --train_folds 3 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_DO02_OP01_physics --train_folds 3 --debug 0 --gpu 1

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_OP01_physics_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 1 
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_DO02_OP01_physics_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 1 

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config CLS_TSF --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config CLS_TSF_PE --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config CLS_TSF_LR1e4 --train_folds 0 --debug 0 --gpu 1

# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_CH01_OP01_physics --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_IPOnly_physics --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_CH01_OP01_physics_MAE --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_CH01_OP01_physics_SGD --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=0 python3 train.py --model_config LSTM5_CLS_DO02_CH01_OP01_physics_SiLU --train_folds 3 4 --debug 0 --gpu 0
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_CH01_IPOnly_SiLU_ADAM_PL --train_folds 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_DO02_CH01_IPOnly_SiLU_ADAM_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 1


# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_Better_useCluster --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_Reg_Better_useCluster_noCH --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_Reg_NEW --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_REG_PL2 --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_CH01_IPOnly_SiLU_ADAM_PL2 --train_folds 0 1 2 3 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_DO02_CH01_IPOnly_SiLU_ADAM_PL2 --train_folds 0 1 2 3 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO03_CH02_IPOnly_SiLU_ADAM_PL3 --train_folds 0 1 2 3 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_DO03_CH02_IPOnly_SiLU_ADAM_PL3 --train_folds 0 1 2 3 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO04_CH02_IPOnly_SiLU_ADAM_PL3 --train_folds 0 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_DO02_CH04_IPOnly_SiLU_ADAM_PL3 --train_folds 3 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_FIXED_NoErr2 --train_folds 0  --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_DO02_CH04_IPOnly_SiLU_ADAM_PL3 --train_folds 0 1 2 3 4 --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_LARGER512x384x256 --train_folds 0  --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_LARGER512x3842x2562_DO03_CH05 --train_folds 0  --debug 0 --gpu 1
# CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_FIXED_NoCrossSectional --train_folds 0  --debug 0 --gpu 1

CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_FIXED_noCS_PL --train_folds 0 1 2 3 4  --debug 0 --gpu 1
CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_FIXED_noCS_PL --train_folds 0 1 2 3 4  --debug 0 --gpu 1

CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_LARGER512x3842x2562_noCS_PL --train_folds 0 1 2  --debug 0 --gpu 1
CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_LARGER512x3842x2562_noCS_PL --train_folds 0 1 2 3 4  --debug 0 --gpu 1

CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_REG_LARGER_physics_noCS_PL --train_folds 2 3 4 --debug 0 --gpu 1
CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_REG_LARGER_physics_noCS_PL --train_folds 0 1 --debug 0 --gpu 1
CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_REG_LARGER_physics_noCS_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 1
# TODO
CUDA_AVAILABLE_DEVICES=1 python3 train.py --model_config LSTM5_CLS_LARGER512x3842x2562_NoErr1_noCS_PL --train_folds 1 2 3 4 --debug 0 --gpu 1
CUDA_AVAILABLE_DEVICES=1 python3 infer.py --model_config LSTM5_CLS_LARGER512x3842x2562_NoErr1_noCS_PL --train_folds 0 1 2 3 4 --debug 0 --gpu 1