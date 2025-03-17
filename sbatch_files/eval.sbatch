#!/bin/bash

#SBATCH -J euijin-gr1-pretrain                    # Job 이름
#SBATCH -o /home/euijinrnd/sbatch_log/gr1/gr1_pretrain.out
#SBATCH --cpus-per-task=5
#SBATCH --gres=gpu:2                      # Job에 사용할 리소스 (GPU)


export CALVIN_ROOT='/home/euijinrnd/workspace/calvin'

accelerate launch evaluate_calvin.py