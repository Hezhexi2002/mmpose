#!/usr/bin/env bash
# Copyright (c) OpenMMLab. All rights reserved.

<<<<<<< HEAD
sed -i '$a\\n' ../../demo/docs/zh_cn/*_demo.md
cat ../../demo/docs/zh_cn/*_demo.md | sed "s/^## 2D\(.*\)Demo/##\1Estimation/" | sed "s/md###t/html#t/g" | sed '1i\# Demos\n' | sed 's=](/docs/en/=](/=g' | sed 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' >demos.md
=======
sed -i '$a\\n' ../../demo/docs/*_demo.md
cat ../../demo/docs/*_demo.md | sed "s/^## 2D\(.*\)Demo/##\1Estimation/" | sed "s/md###t/html#t/g" | sed '1i\# Demos\n' | sed 's=](/docs/en/=](/=g' | sed 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' >demos.md
>>>>>>> 37bb15c868d4c0b53f2ed746e933a1ec2d60310a

 # remove /docs/ for link used in doc site
sed -i 's=](/docs/zh_cn/=](=g' overview.md
sed -i 's=](/docs/zh_cn/=](=g' installation.md
sed -i 's=](/docs/zh_cn/=](=g' quick_run.md
sed -i 's=](/docs/zh_cn/=](=g' migration.md
sed -i 's=](/docs/zh_cn/=](=g' ./model_zoo/*.md
sed -i 's=](/docs/zh_cn/=](=g' ./model_zoo_papers/*.md
sed -i 's=](/docs/zh_cn/=](=g' ./user_guides/*.md
sed -i 's=](/docs/zh_cn/=](=g' ./advanced_guides/*.md
sed -i 's=](/docs/zh_cn/=](=g' ./dataset_zoo/*.md
sed -i 's=](/docs/zh_cn/=](=g' ./notes/*.md
sed -i 's=](/docs/zh_cn/=](=g' ./projects/*.md


<<<<<<< HEAD
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' overview.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' installation.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' quick_run.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' migration.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' ./advanced_guides/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' ./model_zoo/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' ./model_zoo_papers/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' ./user_guides/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' ./dataset_zoo/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' ./notes/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/dev-1.x/=g' ./projects/*.md
=======
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' overview.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' installation.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' quick_run.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' migration.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' ./advanced_guides/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' ./model_zoo/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' ./model_zoo_papers/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' ./user_guides/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' ./dataset_zoo/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' ./notes/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmpose/tree/1.x/=g' ./projects/*.md
>>>>>>> 37bb15c868d4c0b53f2ed746e933a1ec2d60310a
