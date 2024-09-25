#!/bin/bash

export PYTHONPATH=`(cd ../ && pwd)`:`pwd`:$PYTHONPATH

python train_bidastereo.py --name bidastereo --batch_size 1 \
--spatial_scale -0.2 0.4 --image_size 256 384 --saturation_range 0 1.4 --num_steps 80000  \
--ckpt_path logging/bidastereo_sf  \
--sample_len 5 --lr 0.0004 --train_iters 10 --valid_iters 10  \
--num_workers 16 --save_freq 100 --train_datasets things monkaa driving