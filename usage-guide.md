---
layout: page
title: 使用指南
permalink: /usage-guide.html
---

# 📖 CodeCodex 使用指南

> 完整的网站管理和内容发布指南，帮助您快速掌握 CodeCodex 平台的各项功能。

## 🎯 指南概览

| 类型 | 内容 | 适用人群 |
|------|------|----------|
| [📦 安装指南](#-安装指南) | Claude Code 三平台安装 | 所有用户 |
| [📝 内容发布](#-内容发布指南) | 博客文章和页面管理 | 内容创作者 |
| [⚙️ 配置管理](#️-配置管理) | 网站设置和环境变量 | 开发者 |

---

## 📦 安装指南

### 核心特性
- **三平台支持**：Windows、macOS、Linux 完整覆盖
- **详细步骤**：从环境准备到成功运行
- **问题解决**：常见问题和解决方案
- **高级配置**：Gemini CLI、Codex 集成

### 适用场景
- **新手用户**：第一次安装 Claude Code
- **开发者**：需要完整配置环境
- **团队管理**：统一安装标准

### 快速访问
- **[完整安装指南](/installation-guide.html)** - 三平台详细教程
- **[开发者配置指南](DEVELOPER_CONFIG_GUIDE.md)** - 环境变量快速配置

---

## 📝 内容发布指南

### 博客文章管理

#### 小白版发布流程
1. **访问 GitHub 仓库**
2. **进入 `_posts` 目录**
3. **创建新文件**：`YYYY-MM-DD-标题.md`
4. **使用文章模板**
5. **提交发布**

#### 文章模板
```markdown
---
layout: post
title: "文章标题"
date: 2025-09-20 16:00:00
summary: "文章简介"
categories: [教程, Claude Code]
tags: [AI编程, 效率提升]
---

# 标题

正文内容...

## 小标题

更多内容...
```

#### 高级功能
- **分类管理**：教程、实战案例、工具推荐、社区
- **标签系统**：AI编程、效率提升、最佳实践
- **图片上传**：支持本地图片和外链
- **评论系统**：Giscus 集成

### 页面管理

#### 静态页面创建
```yaml
---
layout: page
title: 页面标题
permalink: /page-name.html
---

页面内容...
```

#### 导航菜单配置
在 `_config.yml` 中修改：
```yaml
menu:
  - title: "页面名称"
    url: "/page-url.html"
```

### 快速访问
- **[小白发布指南](BLOGGING_GUIDE.md)** - 零基础博客发布
- **[内容创作最佳实践](#内容创作最佳实践)** - 写作技巧和规范

---

## ⚙️ 配置管理

### 网站基础配置

#### 核心设置 (`_config.yml`)
```yaml
# 网站信息
title: CodeCodex
description: "Claude Code 的终极指南"
url: https://codecodx.ai
email: contact@codecodx.ai

# 功能开关
showBuyCoffee: false
comments: true

# 导航菜单
menu:
  - title: "完整指南"
    url: "/comprehensive-guide.html"
  # 更多菜单项...
```

#### 个性化配置
- **网站标题和描述**
- **联系方式和社交媒体**
- **功能开关**（评论、打赏等）
- **导航菜单结构**

### 环境变量管理

#### 开发环境
```bash
# 本地开发
bundle exec jekyll serve --watch

# 生产构建
bundle exec jekyll build
```

#### 部署配置
- **GitHub Pages**：自动部署
- **自定义域名**：CNAME 配置
- **SSL 证书**：GitHub 自动提供

### 快速访问
- **[开发者配置指南](DEVELOPER_CONFIG_GUIDE.md)** - 详细配置说明
- **[故障排除](#故障排除)** - 常见问题解决

---

## 🔧 高级功能

### API 集成
- **Claude Code API**：官方接口集成
- **Gemini CLI**：Google AI 工具支持
- **OpenAI Codex**：代码生成工具

### 监控和统计
- **API 使用统计**：实时监控面板
- **性能分析**：访问量和用户行为
- **错误追踪**：问题诊断和修复

### 社区功能
- **拼车服务**：团队订阅管理
- **用户群组**：社区交流平台
- **技术支持**：专业问题解答

---

## 📚 最佳实践

### 内容创作最佳实践

#### 文章结构
1. **引言**：简述主题和目标
2. **准备工作**：所需环境和工具
3. **步骤说明**：详细操作指导
4. **代码示例**：实际代码演示
5. **总结**：要点回顾和延伸

#### 写作技巧
- **标题明确**：准确描述内容
- **结构清晰**：使用标题层级
- **代码规范**：语法高亮和注释
- **图文并茂**：适当添加截图

### 配置管理最佳实践

#### 版本控制
```bash
# 配置变更前备份
cp _config.yml _config.yml.backup

# 测试配置
bundle exec jekyll serve --watch

# 提交变更
git add _config.yml
git commit -m "更新配置：添加新菜单项"
```

#### 环境分离
- **开发环境**：本地测试和调试
- **预发布环境**：功能验证
- **生产环境**：正式对外服务

---

## 🛠️ 故障排除

### 常见问题

#### 构建失败
```bash
# 检查依赖
bundle install

# 清理缓存
bundle exec jekyll clean

# 重新构建
bundle exec jekyll build --trace
```

#### 页面显示异常
- **检查文件格式**：YAML 头部格式
- **验证链接**：相对路径和绝对路径
- **清除缓存**：浏览器强制刷新

#### 功能不生效
- **配置文件语法**：YAML 格式检查
- **权限设置**：文件读写权限
- **环境变量**：正确设置和加载

### 调试技巧
```bash
# 详细错误信息
bundle exec jekyll serve --watch --trace

# 检查配置文件
bundle exec jekyll doctor

# 验证站点结构
bundle exec jekyll build --verbose
```

---

## 💬 获取帮助

### 技术支持
- **邮件支持**：contact@codecodx.ai
- **社群交流**：[Telegram 群组](https://t.me/codecodx_ai)
- **文档反馈**：[GitHub Issues](https://github.com/codecodx-ai/codecodx.github.io/issues)

### 学习资源
- **视频教程**：YouTube 频道
- **文档中心**：完整使用文档
- **最佳实践**：社区经验分享

### 快速链接
- [🏠 返回首页](/)
- [📖 完整指南](/comprehensive-guide.html)
- [🚗 拼车服务](/carpool.html)
- [📚 学习资源](/resources.html)

---

*© 2025 CodeCodex - 让 AI 编程更简单*