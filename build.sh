#!/bin/bash

# Jekyll 博客本地构建脚本
# 使用方法: ./build.sh

set -e

echo "================================"
echo "开始构建 Jekyll 博客"
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

# 安装依赖
echo ""
echo "检查并安装依赖..."
bundle install

# 清理旧构建
echo ""
echo "清理旧的构建文件..."
rm -rf _site

# 构建静态文件
echo ""
echo "开始构建..."
JEKYLL_ENV=production bundle exec jekyll build

# 显示构建结果
echo ""
echo "================================"
echo "构建完成！"
echo "================================"
echo "生成的文件在: _site/"
ls -lh _site/ | head -10

echo ""
echo "提示: 运行 ./deploy.sh 部署到服务器"
