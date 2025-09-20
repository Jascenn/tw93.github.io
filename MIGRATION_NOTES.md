# CodeCodex 自定义变更迁移清单

用途：将当前仓库中的“定制内容”快速迁回上游模板或新模板时，按此清单逐项复制即可，避免遗漏。

## 1. 配置（_config.yml）

必拷贝（建议粘贴到文件底部，保持原有键不变）：

- 自定义变量区
    - site_url: https://jascenn.github.io
    - site_baseurl: /codecodexai.github.io
    - repo: Jascenn/codecodexai.github.io
    - site_name, site_description
    - author_name, author_email, author_github, author_twitter
    - default_image: /images/og-default.png
    - comments_enabled: true

导航菜单顺序（保持“使用指南”不展示）：

- 拼车指南 → /carpool.html
- 安装指南 → /installation-guide.html
- 博客 → /
- 关于 → /about.html

部署路径（按目标仓库修改；当前用于 jascenn 项目页）：

- url: https://jascenn.github.io
- baseurl: /codecodexai.github.io

## 2. 头部与导航（_includes）

_includes/head.html

- 关键资源使用“根路径”以便调试 baseurl：
    - /css/index.css, /images/favicon.png, /images/codecodex-logo.png, /images/codecodex-banner.png, /feed.xml
- URL 构建：og:url、twitter:url、canonical 使用 {{ site.url }}{{ page.url }}

_includes/header.html

- 隐藏“使用指南”“学习资源”“示例页”“站点地图”，仅显示：拼车指南、安装指南、博客、关于
- 在“指南”下拉中保留：完整指南、安装指南、服务示例、拼车指南
- 为“拼车指南”增加 NEW 徽标：
    - 在对应链接后加上 <span class="nav-badge new">NEW</span>

## 3. 样式（_sass）

_sass/_elements.scss 追加 NEW 徽标样式与动画：

- .nav-badge.new 红色胶囊 + 动画 nav-badge-pulse / nav-badge-jiggle

## 4. 页面（pages）

installation-guide.md

- 顶部英雄区（标题/副标题/快捷按钮）
        - 三平台 Tab（分别包含 Windows/MacOS/Linux）：
            {% include installation/windows.html %}
            {% include installation/macos.html %}
            {% include installation/linux.html %}
- 底部 CTA 卡片（返回首页 / 完整指南 / 拼车服务）
- 轻量样式与 Tab 切换脚本内联

已删除页面（无需迁移）：

- resources.md

已隐藏入口（页面保留，导航不展示）：

- usage-guide.md

## 5. 部署与预览建议

- 项目页部署（当前配置示例）：
    - url: https://jascenn.github.io
    - baseurl: /codecodexai.github.io
    - 本地预览：http://localhost:4000/codecodexai.github.io/
- 头部资源采用根路径策略，用于快速暴露 baseurl 配置错误（CSS/图标 404 即提醒检查配置）

## 6. 迁移顺序建议（最少改动）

1. 复制 _config.yml 的“自定义变量区”和 menu 到新模板；同步 url/baseurl/repo
2. 合并 _includes/head.html 的资源引用与 URL 构建逻辑
3. 合并 _includes/header.html 的菜单与 “拼车指南 NEW” 徽标逻辑
4. 复制 _sass/_elements.scss 的徽标样式与动画
5. 复制 installation-guide.md 与 _includes/installation/*.html
6. 删除或忽略不需要的页面（如 resources.md）