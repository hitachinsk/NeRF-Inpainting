#!/usr/bin/env bash
config=$1
cd /ghome/zhangkd/newJob/nerf-in/nerf-in3/nerf-inpainting
python run_nerf_inpainting_depthFullSupervise.py --config ${config}
