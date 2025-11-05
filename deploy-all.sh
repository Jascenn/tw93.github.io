#!/bin/bash

# Jekyll 博客一键构建并打包脚本
# 使用方法: ./deploy-all.sh

set -e

echo "================================"
echo "Jekyll 一键构建并打包"
echo "================================"

# 检查依赖
if ! command -v bundle &> /dev/null; then
    echo "错误: 未安装 bundler"
    echo "请运行: gem install bundler"
    exit 1
fi

if ! command -v jekyll &> /dev/null; then
    echo "错误: 未安装 jekyll"
    echo "请运行: gem install jekyll"
    exit 1
fi

# 1. 安装依赖
echo ""
echo "[1/4] 检查并安装依赖..."
bundle install

# 2. 清理旧构建
echo ""
echo "[2/4] 清理旧的构建文件..."
rm -rf _site

# 3. 构建静态文件
echo ""
echo "[3/4] 开始构建..."
JEKYLL_ENV=production bundle exec jekyll build

# 4. 打包文件
echo ""
echo "[4/4] 打包文件..."
PACKAGE_NAME="site_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$PACKAGE_NAME" -C _site/ \
    --exclude='*.sh' \
    --exclude='*.md' \
    --exclude='package-lock.json' \
    --exclude='README_DEPLOY.html' \
    .

# 显示结果
echo ""
echo "================================"
echo "完成！"
echo "================================"
echo "打包文件: $PACKAGE_NAME"
echo "文件大小: $(du -h $PACKAGE_NAME | cut -f1)"
echo ""
echo "下一步操作："
echo "1. 登录宝塔面板: https://199.115.231.33:37510/27b7564d"
echo "2. 进入文件管理 → /www/wwwroot/codecodex.ai/"
echo "3. 上传 $PACKAGE_NAME"
echo "4. 解压到 _site 目录"
echo ""
echo "或者在 Finder 中打开当前目录:"
echo "open ."
echo ""
