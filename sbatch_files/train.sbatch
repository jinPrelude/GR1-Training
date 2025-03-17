#!/bin/bash

#SBATCH -J euijin-gr1-pretrain                    # Job 이름
#SBATCH -o /home/euijinrnd/sbatch_log/gr1/gr1_train.out
#SBATCH --cpus-per-task=29
#SBATCH --gres=gpu:4                      # Job에 사용할 리소스 (GPU)


export CALVIN_ROOT='/home/euijinrnd/workspace/calvin'

accelerate launch --mixed-precision bf16 Main.py