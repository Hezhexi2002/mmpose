_base_ = 'mmdet::rtmdet/rtmdet_tiny_syncbn_fast_8xb32-300e_coco.py'

data_root = '/mnt/h/current_dataset/rune_coco/'
class_name = ('BR', 'BD',  'BA', 'RR', 'RD', 'RA')
num_classes = len(class_name)
metainfo = dict(classes=class_name, palette=[(20, 220, 60), (20, 220, 60), (20, 220, 60), (220, 20, 60), (220, 20, 60), (220, 20, 60)])

num_epochs_stage2 = 5

max_epochs = 300
train_batch_size_per_gpu = 16
train_num_workers = 10
val_batch_size_per_gpu = 12
val_num_workers = 4

input_shape = 416

model = dict(
    backbone=dict(frozen_stages=4),
    bbox_head=dict(head_module=dict(num_classes=num_classes)),
    train_cfg=dict(assigner=dict(num_classes=num_classes)))

train_dataloader = dict(
    batch_size=train_batch_size_per_gpu,
    num_workers=train_num_workers,
    dataset=dict(
        data_root=data_root,
        metainfo=metainfo,
        ann_file='annotations/instances_train2017.json',
        data_prefix=dict(img='train2017/')))

val_dataloader = dict(
    batch_size=val_batch_size_per_gpu,
    num_workers=val_num_workers,
    dataset=dict(
        metainfo=metainfo,
        data_root=data_root,
        ann_file='annotations/instances_val2017.json',
        data_prefix=dict(img='val2017/')))

test_dataloader = val_dataloader

param_scheduler = [
    dict(
        type='LinearLR',
        start_factor=_base_.lr_start_factor,
        by_epoch=False,
        begin=0,
        end=30),
    dict(
        # use cosine lr from 150 to 300 epoch
        type='CosineAnnealingLR',
        eta_min=_base_.base_lr * 0.05,
        begin=max_epochs // 2,
        end=max_epochs,
        T_max=max_epochs // 2,
        by_epoch=True,
        convert_to_iter_based=True),
]

_base_.custom_hooks[1].switch_epoch = max_epochs - num_epochs_stage2

val_evaluator = dict(ann_file=data_root + 'annotations/instances_val2017.json')
test_evaluator = val_evaluator

default_hooks = dict(
    checkpoint=dict(interval=10, max_keep_ckpts=2, save_best='auto'),
    logger=dict(type='LoggerHook', interval=5))
train_cfg = dict(max_epochs=max_epochs, val_interval=10)


