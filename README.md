# CodeCodex 🦁

Claude Code 的终极指南 - 探索 AI 编程的无限可能

## 📖 关于项目

这是 CodeCodex 的官方博客，基于 Jekyll 构建，使用 cosy-jekyll-theme 主题。我们致力于提供高质量的 Claude Code 学习资源和实践指南。

## 🌟 功能特性

- 📝 双语支持（中文/英文）
- 🎨 简洁美观的响应式设计
- 🚀 性能优化（无 jQuery，懒加载）
- 💬 Giscus 评论系统
- 📊 支持 PPT 演示模式
- 🖼️ CDN 图片自动优化
- 📱 移动端优化

## 🛠️ 本地开发

```bash
# 安装依赖
gem install bundler
bundle install

# 启动开发服务器
npm run dev
# 或
bundle exec jekyll serve --watch --trace

# 构建生产版本
npm run build
# 或
bundle exec jekyll build
```

访问 `http://localhost:4000` 查看本地站点

## 🚀 部署

通过 GitHub Actions 自动部署到 GitHub Pages。推送到 `master` 分支即可触发自动部署。

## 📚 内容管理

### 写作指南

#### 中文文章 (`_posts/`)
```yaml
---
layout: post
title: "文章标题"
date: 2025-01-01 16:00:00
summary: "文章摘要"
categories: Share # 或 Life, Tech
---
```

#### 英文文章 (`_posts_en/`)
```yaml
---
layout: post
title: "English Title"
date: 2025-01-01 16:00:00
summary: "Article summary"
categories: Tech
lang: en-US
---
```

## 🔧 技术栈

- Jekyll 静态网站生成器
- GitHub Pages 托管
- GitHub Actions 自动部署
- Giscus 评论系统
- Reveal.js PPT 支持

## 📄 License

MIT License - 欢迎 Fork 和使用

---

© 2025 CodeCodex - 探索 AI 编程的无限可能