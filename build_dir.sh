#!/bin/bash

# 定义编译链文件夹路径
BUILD_DIR="./build"
MOUNT_POINT="/mnt"

# 1. 检查是否已挂载 /dev/sdb1 到 /mnt
if mountpoint -q $MOUNT_POINT; then
    echo "$MOUNT_POINT 已挂载"
else
    echo "$MOUNT_POINT 未挂载，正在挂载 /dev/sdb1"
    sudo mount /dev/sdb1 $MOUNT_POINT
fi

# 2. 检查是否存在 /mnt/build 目录
if [ ! -d "$MOUNT_POINT/build" ]; then
    echo "创建 /mnt/build 目录"
    sudo mkdir -p $MOUNT_POINT/build
fi

# 3. 检查是否存在 build 符号链接
if [ -L "$BUILD_DIR" ]; then
    echo "$BUILD_DIR 符号链接已存在"
elif [ -d "$BUILD_DIR" ]; then
    echo "检测到现有的 build 目录，正在删除"
    sudo rm -rf $BUILD_DIR
    echo "创建符号链接"
    sudo ln -s $MOUNT_POINT/build $BUILD_DIR
else
    echo "创建符号链接"
    sudo ln -s $MOUNT_POINT/build $BUILD_DIR
fi

# 4. 显示结果
echo "编译链文件夹已移动到 /mnt 并创建了符号链接"
ls -l $BUILD_DIR
