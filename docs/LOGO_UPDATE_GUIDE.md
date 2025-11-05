# Logo 更新指南

## 📁 文件位置

```text
images/
├── config/
│   └── logo.svg              (11KB)   - 导航栏 logo
├── favicon.ico               (3.3KB)  - 浏览器图标
├── favicon-32x32.png         (1.1KB)  - 32px 图标
├── favicon-16x16.png         (544B)   - 16px 图标
├── apple-touch-icon.png      (6.3KB)  - iOS 图标
├── codecodex-logo.png        (49KB)   - 社交分享图
└── codecodex-banner.png      (27KB)   - Twitter 横幅
```

## 🔧 配置文件

### 1. `_includes/header.html` (第 10, 14 行)

```html
<img src="/images/config/logo.svg" alt="{{ site.title }}"
     style="height: 40px; width: auto; vertical-align: middle;">
```

### 2. `_includes/head.html` (第 47-50 行)

```html
<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<link rel="icon" type="image/png" sizes="32x32" href="/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">
<link rel="apple-touch-icon" sizes="180x180" href="/images/apple-touch-icon.png">
```

### 3. 社交分享配置 (head.html 第 15, 25 行)

```html
{% assign og_image = page.feature | default: "/images/codecodex-logo.png" %}
{% assign twitter_image = page.feature | default: "/images/codecodex-banner.png" %}
```

## ✅ 更新完成

- ✅ 导航栏显示 Lion CC logo 图片
- ✅ 浏览器标签显示 Lion CC favicon
- ✅ 社交分享使用 Lion CC 宣传图
- ✅ 所有图片已优化（总大小 ~100KB）

## 🚀 部署

推送到 GitHub 后，等待 2-5 分钟让 GitHub Pages 重新构建。

访问 <https://codecodex.ai> 查看效果。