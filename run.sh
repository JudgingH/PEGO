#!/bin/bash

DATASET=$1

if [ ${DATASET} == pacs ]; then
    # PACS
    data_dir='/data/DataSets/PACS/kfold/'
    for SEED in $(seq 0 0)
    do
      python train_all.py PACS0 --dataset PACS --trial_seed ${SEED} --algorithm PEGO \
      --data_dir $data_dir --seed 0 --checkpoint_freq 200 --model clip_vit-b16_lora --ld 1e-3 --peft_hp 4 --lora_nums 2 --lr 5e-4
    done
elif [ ${DATASET} == oh ]; then
    # OfficeHome
    data_dir='/data/DataSets/OfficeHome/'
    for SEED in $(seq 0 0)
    do
      python train_all.py OH0 --dataset OfficeHome --trial_seed ${SEED} --algorithm PEGO \
      --data_dir $data_dir --seed 0 --checkpoint_freq 200 --model clip_vit-b16_lora --ld 1e-3 --peft_hp 4 --lora_nums 4 --lr 5e-4
    done
elif [ ${DATASET} == vlcs ]; then
    # VLCS
    data_dir='/data/DataSets/VLCS_for_domainbed/'
    for SEED in $(seq 0 0)
    do
      python train_all.py VLCS0 --dataset VLCS --trial_seed ${SEED} --algorithm PEGO \
      --data_dir $data_dir --seed 0 --checkpoint_freq 200 --model clip_vit-b16_lora --ld 1e-3 --peft_hp 4 --lora_nums 4 --lr 5e-4
    done
elif [ ${DATASET} == terra ]; then
    # TerraIncognita
    data_dir='/data/DataSets/terra_incognita/'
    for SEED in $(seq 0 0)
    do
      python train_all.py TR0 --dataset TerraIncognita --trial_seed ${SEED} --algorithm PEGO \
      --data_dir $data_dir --seed 0 --checkpoint_freq 200 --model clip_vit-b16_lora --ld 1e-3 --peft_hp 4 --lora_nums 4 --lr 5e-4
    done
elif [ ${DATASET} == dn ]; then
    # DomainNet
    data_dir='/data/DataSets/DomainNet/'
    for SEED in $(seq 0 0)
    do
      python train_all.py DN0 --dataset DomainNet --trial_seed ${SEED} --algorithm PEGO \
      --data_dir $data_dir --seed 0 --checkpoint_freq 1000 --model clip_vit-b16_lora --ld 1e-3 --peft_hp 4 --lora_nums 4 --lr 5e-4
    done
fi