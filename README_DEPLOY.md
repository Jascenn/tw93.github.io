# 部署指南

## 一键部署流程

### 1. 本地构建
```bash
./build.sh
```

这个脚本会：
- 检查 Ruby/Jekyll 环境
- 安装依赖包
- 清理旧构建
- 生成静态文件到 `_site/` 目录

### 2. 部署到服务器
```bash
./deploy.sh
```

这个脚本会：
- 检查 `_site/` 目录是否存在
- 使用 rsync 同步文件到服务器
- 自动删除服务器上多余的旧文件

## 完整部署命令（一步到位）

```bash
./build.sh && ./deploy.sh
```

## 配置说明

如果服务器信息有变化，编辑 `deploy.sh` 文件中的配置：

```bash
SERVER_USER="root"                              # SSH 用户名
SERVER_HOST="199.115.231.33"                    # 服务器IP
SERVER_PATH="/www/wwwroot/codecodex.ai/_site/"  # 服务器目标路径
```

## 前置要求

### 本地环境
- Ruby (已安装)
- Jekyll (已安装)
- Bundler (已安装)

### 服务器要求
- 已配置 SSH 密钥认证（无密码登录）
- Nginx 已配置指向 `_site` 目录
- 有写入权限

## 首次部署前准备

### 1. 配置 SSH 密钥（如果还没配置）

```bash
# 生成密钥（如果没有）
ssh-keygen -t rsa -b 4096

# 复制公钥到服务器
ssh-copy-id root@199.115.231.33

# 测试免密登录
ssh root@199.115.231.33
```

### 2. 测试 rsync

```bash
rsync --version  # 检查本地是否安装 rsync
ssh root@199.115.231.33 "rsync --version"  # 检查服务器是否安装 rsync
```

## 常见问题

### Q: 部署时提示权限错误？
A: 确保服务器目标目录有写入权限，或使用 sudo：
```bash
# 在服务器上执行
chown -R www-data:www-data /www/wwwroot/codecodex.ai/_site/
```

### Q: rsync 传输速度慢？
A: 添加压缩选项（已默认开启 `-z`）

### Q: 想要自动化部署？
A: 可以配合 Git hooks，或使用 GitHub Actions：
```bash
# .git/hooks/post-commit
#!/bin/bash
./build.sh && ./deploy.sh
```

## 部署流程图

```
本地修改文件
    ↓
运行 ./build.sh
    ↓
Jekyll 构建 → _site/
    ↓
运行 ./deploy.sh
    ↓
rsync 同步到服务器
    ↓
Nginx 提供静态文件
    ↓
访问 https://codecodex.ai
```

## 回滚方案

如果部署出问题，服务器上有备份：
```bash
# 在服务器上执行
cd /www/wwwroot
mv codecodex.ai codecodex.ai-broken
mv codecodex.ai-bak codecodex.ai
```
