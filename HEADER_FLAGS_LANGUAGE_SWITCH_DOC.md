# Header 旗帜图标语言切换功能文档

## 功能概述

通过 header 中的旗帜图标（中国国旗/美国国旗）实现中英文页面切换，支持基于 `lang_ref` 的智能匹配和 URL 路径的向后兼容切换。

## 实现日期

- 初始版本：网站建立时
- 智能匹配更新：2025-11-16

## 功能特性

1. **旗帜图标显示**
   - 中文页面显示美国国旗图标
   - 英文页面（`/en/` 路径）显示中国国旗图标

2. **智能语言匹配**
   - 优先使用 `lang_ref` 查找对应语言版本
   - 准确匹配相同主题的不同语言文章
   - 支持不同文件名的中英文文章互相跳转

3. **向后兼容**
   - 对于没有 `lang_ref` 的页面，使用 URL 路径切换
   - 简单添加/删除 `/en/` 前缀

4. **滚动位置保持**
   - 切换语言时保持当前滚动位置
   - 使用 sessionStorage 保存位置
   - 页面加载后自动恢复

## 技术实现

### 文件位置

`_includes/flags.html`

### 核心代码

```liquid
<!-- 语言切换标志 -->
{% if page.url contains '/en/' %}
  {% comment %} 当前是英文页面，查找对应的中文版本 {% endcomment %}
  {% if page.lang_ref %}
    {% assign zh_posts = site.posts | where: "lang_ref", page.lang_ref %}
    {% if zh_posts.size > 0 %}
      {% assign zh_url = zh_posts[0].url %}
    {% else %}
      {% assign zh_url = page.url | remove: '/en' %}
    {% endif %}
  {% else %}
    {% assign zh_url = page.url | remove: '/en' %}
  {% endif %}
  {% if zh_url == '/' %}
    {% assign zh_url = '/' %}
  {% endif %}
<li class="header-item language-icon">
  <a href="{{ zh_url }}" class="lang-switch" title="切换到中文">
    <!-- 中国国旗 SVG -->
  </a>
</li>
{% else %}
  {% comment %} 当前是中文页面，查找对应的英文版本 {% endcomment %}
  {% if page.lang_ref %}
    {% assign en_posts = site.posts_en | where: "lang_ref", page.lang_ref %}
    {% if en_posts.size > 0 %}
      {% assign en_url = en_posts[0].url %}
    {% else %}
      {% assign en_url = page.url | prepend: '/en' %}
    {% endif %}
  {% else %}
    {% assign en_url = page.url | prepend: '/en' %}
  {% endif %}
  {% if page.url == '/' %}
    {% assign en_url = '/en/' %}
  {% endif %}
<li class="header-item language-icon">
  <a href="{{ en_url }}" class="lang-switch" title="Switch to English">
    <!-- 美国国旗 SVG -->
  </a>
</li>
{% endif %}
```

### 滚动位置保持脚本

```javascript
// 语言切换保持滚动位置
(function() {
  // 页面加载时恢复滚动位置
  window.addEventListener('DOMContentLoaded', function() {
    var savedScrollPos = sessionStorage.getItem('langSwitchScrollPos');
    if (savedScrollPos !== null) {
      window.scrollTo(0, parseInt(savedScrollPos));
      sessionStorage.removeItem('langSwitchScrollPos');
    }
  });

  // 点击语言切换时保存滚动位置
  document.addEventListener('click', function(e) {
    var langSwitch = e.target.closest('.lang-switch');
    if (langSwitch) {
      sessionStorage.setItem('langSwitchScrollPos', window.pageYOffset || document.documentElement.scrollTop);
    }
  });
})();
```

## 工作流程

### 场景 1：有 lang_ref 的文章切换

**中文文章** (`_posts/2025-11-16-bettafish-cross-platform-deployment-toolkit.md`):
```yaml
lang: zh-CN
lang_ref: bettafish-deployment-v2
```

**英文文章** (`_posts_en/2025-11-16-bettafish-cross-platform-deployment-toolkit-en.md`):
```yaml
lang: en
lang_ref: bettafish-deployment-v2
```

**切换流程**:
1. 用户访问中文文章
2. Header 显示美国国旗图标
3. 点击图标
4. 系统查找 `site.posts_en` 中 `lang_ref == "bettafish-deployment-v2"` 的文章
5. 找到英文文章，跳转到 `/en/2025-11-16/bettafish-cross-platform-deployment-toolkit-en.html`
6. 恢复滚动位置

### 场景 2：没有 lang_ref 的页面切换

**中文页面**: `/about.html`

**切换流程**:
1. 用户访问 `/about.html`
2. Header 显示美国国旗图标
3. 点击图标
4. 没有 `lang_ref`，使用 URL 路径切换
5. 跳转到 `/en/about.html`

### 场景 3：首页切换

**中文首页**: `/`

**英文首页**: `/en/`

## 配置示例

### 已配置的文章对

1. **BettaFish v2.0 部署工具包**
   - 中文：`2025-11-16-bettafish-cross-platform-deployment-toolkit.md`
   - 英文：`2025-11-16-bettafish-cross-platform-deployment-toolkit-en.md`
   - lang_ref: `bettafish-deployment-v2`

2. **BettaFish LionCC API 部署指南**
   - 中文：`2025-11-07-bettafish-lioncc-api-deployment-guide.md`
   - 英文：`2025-11-07-bettafish-lioncc-api-deployment-guide.md`
   - lang_ref: `bettafish-lioncc-deployment`

## 优势

1. **准确匹配** - 不依赖文件名，支持不同命名规则的中英文文章
2. **灵活性** - 可以处理任意文件名的文章对
3. **向后兼容** - 不影响现有没有 `lang_ref` 的页面
4. **用户体验** - 保持滚动位置，无缝切换语言

## Git 提交记录

1. **cda782b** - 更新 header 旗帜图标语言切换功能（添加 lang_ref 支持）
2. **924a8c7** - Revert（临时撤回）
3. **31d00f5** - Reapply（恢复功能）

## 使用说明

### 为新文章配置语言切换

1. 在中文文章的 front matter 中添加：
```yaml
lang: zh-CN
lang_ref: unique-identifier
```

2. 在对应的英文文章的 front matter 中添加：
```yaml
lang: en
lang_ref: unique-identifier  # 与中文文章相同
```

3. 将英文文章放在 `_posts_en/` 目录下

4. 确保 `lang_ref` 在所有文章中唯一

### lang_ref 命名建议

- 使用描述性的标识符
- 使用小写字母和连字符
- 例如：`bettafish-deployment-v2`, `api-configuration-guide`, `tutorial-docker-basics`

## 注意事项

1. **唯一性** - 确保每对中英文文章使用唯一的 `lang_ref`
2. **集合配置** - 需要在 `_config.yml` 中配置 `posts_en` 集合
3. **目录结构** - 英文文章必须在 `_posts_en/` 目录下
4. **可选性** - `lang_ref` 是可选的，没有配置时使用 URL 路径切换

## 相关文件

- `_includes/flags.html` - 旗帜图标和切换逻辑
- `_includes/header.html` - 引用 flags.html
- `_config.yml` - posts_en 集合配置

## 最后更新

2025-11-16
