#!/usr/bin/env bash
[ -z "${exp_name}" ] && exp_name="uspto"
[ -z "${seed}" ] && seed="0"
[ -z "${arch}" ] && arch="--ffn_dim 1024 --hidden_dim 256 --dropout_rate 0.1 --intput_dropout_rate 0.05 --attention_dropout_rate 0.1 --n_layer 6 --peak_lr 2.5e-4 --end_lr 1e-6 --head_size 12 --weight_decay 0.00 --edge_type one_hop --warmup_updates 3000 --tot_updates 700000"
[ -z "${batch_size}" ] && batch_size="5"
[ -z "${dataset_name}" ] && dataset_name="uspto-full-distilled-weaklabel"  #"typed_uspto50k_split2"

echo -e "\n\n"
echo "=====================================ARGS======================================"
echo "arg0: $0"
echo "exp_name: ${exp_name}"
echo "arch: ${arch}"
echo "seed: ${seed}"
echo "batch_size: ${batch_size}"
echo "==============================================================================="

default_root_dir=$PWD
mkdir -p $default_root_dir
n_gpu=1
export CUDA_VISIBLE_DEVICES=0

python entry.py --num_workers 1 --num_nodes 1 --seed $seed --batch_size $batch_size  --min_epochs 100 --accumulate_grad_batches 1  --sync_batchnorm True  --val_check_interval 1000 \
      --dataset_name $dataset_name --gradient_clip_val 4 \
      --gpus $n_gpu  --accelerator ddp \
      $arch \
      --default_root_dir $default_root_dir --progress_bar_refresh_rate 10