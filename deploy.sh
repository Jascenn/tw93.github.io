#!/bin/bash

# Jekyll 博客打包脚本（手动上传到宝塔）
# 使用方法: ./deploy.sh

set -e

# ===== 配置区域 =====
LOCAL_SITE_PATH="_site/"
PACKAGE_NAME="site_$(date +%Y%m%d_%H%M%S).tar.gz"
# ==================

echo "================================"
echo "打包静态文件"
echo "================================"

# 检查 _site 目录是否存在
if [ ! -d "$LOCAL_SITE_PATH" ]; then
    echo "错误: _site 目录不存在"
    echo "请先运行: ./build.sh"
    exit 1
fi

# 打包文件（排除开发文件）
echo ""
echo "正在打包..."
tar -czf "$PACKAGE_NAME" -C "$LOCAL_SITE_PATH" \
    --exclude='*.sh' \
    --exclude='*.md' \
    --exclude='package-lock.json' \
    --exclude='README_DEPLOY.html' \
    .

# 显示结果
echo ""
echo "================================"
echo "打包完成！"
echo "================================"
echo "文件: $PACKAGE_NAME"
echo "大小: $(du -h $PACKAGE_NAME | cut -f1)"
echo ""
echo "请按以下步骤上传："
echo "1. 登录宝塔面板: https://199.115.231.33:37510/27b7564d"
echo "2. 进入文件管理"
echo "3. 上传 $PACKAGE_NAME 到 /www/wwwroot/codecodex.ai/"
echo "4. 在宝塔中解压到 _site 目录"
echo ""
echo "或者使用命令行上传（需要配置SSH密钥）："
echo "scp $PACKAGE_NAME root@199.115.231.33:/www/wwwroot/codecodex.ai/"
echo ""
