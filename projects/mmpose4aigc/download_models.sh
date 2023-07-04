#!/bin/bash
# Copyright (c) OpenMMLab. All rights reserved.

# Create models folder
mkdir models

# Go to models folder
cd models

# Download det model
wget https://download.openmmlab.com/mmpose/v1/projects/rtmpose/rtmdet_nano_8xb32-100e_coco-obj365-person-05d8511e.pth

# Download pose model
<<<<<<< HEAD:projects/mmpose4aigc/download_models.sh
wget https://download.openmmlab.com/mmpose/v1/projects/rtmposev1/rtmpose-m_simcc-aic-coco_pt-aic-coco_420e-256x192-63eb25f7_20230126.pth
=======
wget https://download.openmmlab.com/mmpose/v1/projects/rtmpose/rtmpose-m_simcc-aic-coco_pt-aic-coco_420e-256x192-63eb25f7_20230126.pth
>>>>>>> 37bb15c868d4c0b53f2ed746e933a1ec2d60310a:projects/mmpose4aigc/install_models.sh

# Go back mmpose4aigc
cd ..

# Success
echo "Download completed."
