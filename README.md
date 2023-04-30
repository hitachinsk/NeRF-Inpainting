# NeRF-inpainting

This is the unofficial implementation of the paper: "NeRF-In: Free-Form NeRF Inpainting with RGB-D Priors".



https://user-images.githubusercontent.com/34183663/235341465-a33f187a-f46c-403b-b170-b0c188be687b.mp4



https://user-images.githubusercontent.com/34183663/235341474-429cb9a4-77ac-4cf9-b16f-cd3d09eed13d.mp4



# Prerequisites
We annotated four scenes for NeRF inpainting. In each scene, we provide the annotated masks (processed by STCN), the inpainted frames (processed by LaMA) and the filled depth map. Please download these [four scenes](https://drive.google.com/file/d/1gt3YoK5aHc_uMx3_evwNqjjHct_snBkc/view?usp=share_link) and put them in the `<Data directory>`.

Then, please download the pretrained NeRF models. These models are pretrained with the **original data**, and our goal is to finetune these models with the inpainted frames/depth maps to get the inpainted neural radiance field. You can download these models at [NeRF-pytorch repository](https://github.com/yenchenlin/nerf-pytorch) or [this page](https://drive.google.com/file/d/14NEGqel9sdoTF8lPXLAHnRrsPUpj5aGR/view?usp=share_link). Put the pretrained models in the `<Model directory>`

As for the package installation, please refer to the original [NeRF-pytorch repository](https://github.com/yenchenlin/nerf-pytorch).

# Quick start
We provide the finetuned checkpoints, which has encoded the inpainted scenes in the radiance fields. You can download them [at this page](https://drive.google.com/file/d/1p8NQA8CbPeziv8qiaRSVOIV6CT-eEOW4/view?usp=share_link) and put them in the `<Result directory>`.

Then, modify the `datadir`, `basedir`, `finetune_dir` and `pre_ckpt` in the configuration files in [configs_inpainting](configs_inpainting) with the corresponding data path and pretrained checkpoint path.

FInally, run the following commands to activate finetuning process.
```
bash inference.sh --config configs_inpainting/horns.txt
```
If everything works, you will find a video in the `basedir`, which is shown as.

https://user-images.githubusercontent.com/34183663/235341394-9415a8d9-ea1a-49d1-a15c-49775760339d.mp4


# Training
As for training, all you need to do is to modify the corresponding items in the configuration files and run the following commands to activate the training process.
```
bash train.sh --config configs_inpainting/horns.txt
```
