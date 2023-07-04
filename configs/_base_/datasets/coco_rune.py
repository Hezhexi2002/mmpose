dataset_info = dict(
    dataset_name='coco_rune',
    paper_info=dict(
        author='Jin, Sheng and Xu, Lumin and Xu, Jin and '
        'Wang, Can and Liu, Wentao and '
        'Qian, Chen and Ouyang, Wanli and Luo, Ping',
        title='Whole-Body Human Pose Estimation in the Wild',
        container='Proceedings of the European '
        'Conference on Computer Vision (ECCV)',
        year='2020',
        homepage='https://github.com/jin-s13/COCO-WholeBody/',
    ),
    keypoint_info={
        0:
        dict(name='rb', id=0, color=[255, 0, 0], type=''),
        1:
        dict(name='rt', id=1, color=[255, 0, 0], type=''),
        2:
        dict(name='lt', id=2, color=[255, 0, 0], type=''),
        3:
        dict(name='R', id=3, color=[255, 0, 0], type=''),
        4:
        dict(name='lb', id=4, color=[255, 0, 0], type='')
    },
    skeleton_info={},
    joint_weights=[1.] * 5,

    # 'https://github.com/jin-s13/COCO-WholeBody/blob/master/'
    # 'evaluation/myeval_wholebody.py#L177'
    sigmas=[
        0.042, 0.043, 0.044, 0.043, 0.040
    ])
