# 语言切换按钮功能文档

## 功能概述

为博客文章添加了中英文实时切换功能，允许用户在阅读文章时点击按钮切换到对应语言版本，并保持当前阅读位置。

## 实现日期

2025-11-16

## 功能特性

1. **文章内语言切换按钮**
   - 中文文章显示 "EN" 按钮
   - 英文文章显示 "中文" 按钮
   - 按钮样式：紫色渐变背景，圆角设计，悬停效果

2. **滚动位置保持**
   - 用户在某一位置切换语言时，自动滚动到对应位置
   - 使用 sessionStorage 保存滚动位置
   - 页面加载后自动恢复位置

3. **文章关联机制**
   - 通过 `lang` 和 `lang_ref` 字段关联中英文版本
   - 自动匹配对应语言的文章

## 技术实现

### 1. 文章 Front Matter 配置

```yaml
---
layout: post
title: "文章标题"
lang: zh-CN  # 或 en
lang_ref: article-identifier  # 相同的 lang_ref 关联中英文版本
---
```

### 2. 布局文件修改

**文件**: `_layouts/post.html`

**添加的代码**:

```html
{% if page.lang_ref %}
<div class="lang-switch-container">
  {% assign posts = site.posts | where: "lang_ref", page.lang_ref %}
  {% assign posts_en = site.posts_en | where: "lang_ref", page.lang_ref %}
  {% if page.lang == "zh-CN" %}
    {% for post in posts_en %}
    <a href="{{ post.url }}" class="lang-switch-btn" title="Switch to English">EN</a>
    {% endfor %}
  {% else %}
    {% for post in posts %}
    <a href="{{ post.url }}" class="lang-switch-btn" title="切换到中文">中文</a>
    {% endfor %}
  {% endif %}
</div>
{% endif %}
```

**CSS 样式**:

```css
.lang-switch-container {
  display: inline-block;
  margin-left: 15px;
}

.lang-switch-btn {
  display: inline-block;
  padding: 4px 12px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  border-radius: 15px;
  font-size: 12px;
  font-weight: 600;
  text-decoration: none;
  transition: all 0.3s ease;
  box-shadow: 0 2px 4px rgba(102, 126, 234, 0.3);
}

.lang-switch-btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(102, 126, 234, 0.5);
  text-decoration: none;
  color: white;
}
```

**JavaScript 滚动位置保持**:

```javascript
// 语言切换保持滚动位置
(function() {
  // 页面加载时恢复滚动位置
  window.addEventListener('DOMContentLoaded', function() {
    var savedScrollPos = sessionStorage.getItem('postLangSwitchScrollPos');
    if (savedScrollPos !== null) {
      setTimeout(function() {
        window.scrollTo(0, parseInt(savedScrollPos));
        sessionStorage.removeItem('postLangSwitchScrollPos');
      }, 100);
    }
  });

  // 点击语言切换按钮时保存滚动位置
  document.addEventListener('click', function(e) {
    var langSwitch = e.target.closest('.lang-switch-btn');
    if (langSwitch) {
      var scrollPos = window.pageYOffset || document.documentElement.scrollTop;
      sessionStorage.setItem('postLangSwitchScrollPos', scrollPos);
    }
  });
})();
```

### 3. 已配置的文章示例

**中文文章**: `_posts/2025-11-16-bettafish-cross-platform-deployment-toolkit.md`
```yaml
lang: zh-CN
lang_ref: bettafish-deployment-v2
```

**英文文章**: `_posts_en/2025-11-16-bettafish-cross-platform-deployment-toolkit-en.md`
```yaml
lang: en
lang_ref: bettafish-deployment-v2
```

**其他已配置文章**:
- `2025-11-07-bettafish-lioncc-api-deployment-guide.md` (lang_ref: `bettafish-lioncc-deployment`)

## Git 提交记录

1. **090990d** - 实现文章实时语言切换功能
2. **4e92d72** - 添加语言切换时保持滚动位置功能

## 删除原因

用户决定删除此功能，恢复到仅使用 header 中的旗帜图标进行语言切换的方式。

## 删除日期

2025-11-16

## 备注

如果将来需要恢复此功能，可参考本文档和相关的 Git 提交记录。
