# 博客发布模板和步骤指南

## 中文博客文章模板

在 `_posts/` 目录下创建文件，命名格式：`YYYY-MM-DD-post-title.md`

```markdown
---
layout: post
title: "文章标题"
date: 2025-01-01 16:00:00
summary: "文章简介，用于SEO和首页显示"
categories: Share  # 可选：Share, Life, Tech
tags: [标签1, 标签2]  # 可选
author: Jascen  # 可选
image: /images/posts/post-image.jpg  # 可选：文章封面图
---

## 文章正文开始

在这里写你的文章内容...

### 子标题

内容...

#### 更小的标题

内容...

## 代码示例

```javascript
function hello() {
    console.log("Hello World!");
}
```

## 图片插入

![图片描述](/images/posts/image-name.jpg)

## 链接

[链接文字](https://example.com)

## 列表

- 项目1
- 项目2
- 项目3

## 结语

总结内容...
```

## 英文博客文章模板

在 `_posts_en/` 目录下创建文件，命名格式：`YYYY-MM-DD-post-title.md`

```markdown
---
layout: post
title: "Post Title in English"
date: 2025-01-01 16:00:00
summary: "Brief description in English for SEO and homepage"
categories: Life  # Options: Share, Life, Tech
tags: [tag1, tag2]  # Optional
author: Jascen  # Optional
lang: en-US
image: /images/posts/post-image.jpg  # Optional: post cover image
---

## Post Content Starts Here

Write your English content here...

### Subtitle

Content...

## Code Examples

```python
def hello_world():
    print("Hello World!")
```

## Images

![Image description](/images/posts/image-name.jpg)

## Conclusion

Summary content...
```

## PPT演示文稿模板

在 `_posts/` 目录下创建文件，用于演示：

```markdown
---
layout: ppt
title: "演示标题"
date: 1993-07-01 16:00:00  # 使用过去日期避免在主页显示
summary: "演示简介"
comments: false
hide: true
---

# 第一张幻灯片

演示内容...

---

# 第二张幻灯片

更多内容...

---

# 结束

谢谢观看！
```

## 发布步骤

### 1. 本地开发和预览

```bash
# 启动本地服务器
npm run dev
# 或者
bundle exec jekyll serve --watch

# 访问 http://localhost:4000 预览
```

### 2. 创建文章文件

```bash
# 中文文章
touch _posts/$(date +%Y-%m-%d)-your-post-title.md

# 英文文章
touch _posts_en/$(date +%Y-%m-%d)-your-post-title.md
```

### 3. 编写内容

- 复制对应模板内容
- 修改 front matter（文章头部YAML配置）
- 编写正文内容
- 添加图片到 `images/posts/` 目录（如需要）

### 4. 验证和测试

```bash
# 检查语法
bundle exec jekyll build

# 本地预览确认效果
bundle exec jekyll serve
```

### 5. 提交和发布

```bash
# 添加文件到git
git add .

# 提交
git commit -m "Add new post: 文章标题"

# 推送到GitHub（自动触发GitHub Pages部署）
git push origin main
```

## 文章分类说明

- **Share**: 技术分享、经验总结、教程
- **Life**: 生活感悟、个人思考、随笔
- **Tech**: 纯技术内容、代码示例、技术深度解析

## 图片优化建议

1. 图片放在 `images/posts/` 目录下
2. 使用描述性文件名：`2025-01-01-post-topic-image.jpg`
3. 建议尺寸：宽度不超过1200px
4. 支持格式：JPG, PNG, GIF, SVG
5. 添加有意义的alt文本

## SEO优化建议

1. `title`: 简洁明了，包含关键词
2. `summary`: 120-160字符，吸引人的描述
3. `tags`: 3-5个相关标签
4. 正文使用合理的标题层级（H2, H3, H4）
5. 内部链接到相关文章
6. 图片添加alt属性

## 常用Markdown语法

```markdown
# 一级标题
## 二级标题
### 三级标题

**粗体文字**
*斜体文字*
`行内代码`

> 引用块

[链接](URL)
![图片](URL)

- 无序列表
1. 有序列表

| 表格 | 标题 |
|------|------|
| 内容 | 内容 |
```

## 常见问题

### Q: 文章不显示在首页？
A: 检查文件名格式和date字段，确保在 `_posts/` 目录下

### Q: 中文显示乱码？
A: 确保文件编码为UTF-8

### Q: 图片不显示？
A: 检查图片路径，确保文件存在于正确位置

### Q: 代码高亮不工作？
A: 检查语言标识符是否正确，如 ```javascript, ```python

### Q: 如何置顶文章？
A: 在front matter中添加 `sticky: true`
