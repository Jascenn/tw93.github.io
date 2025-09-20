---
layout: page
title: CodeCodex 完整指南
permalink: /comprehensive-guide.html
---

# 🦁 CodeCodex 完整服务指南

欢迎来到 CodeCodex！这里是您探索 Claude Code 的一站式平台。

---

## 🚗 拼车服务

{% assign carpool_page = site.pages | where: "name", "carpool.md" | first %}

### 快速了解
- **六人拼车**：每人 366元
- **Claude Max 200刀包车**：总价 2200元
- **福利**：预约送 ChatGPT Codex 免费体验
- **支持**：本地部署，国内网络可用

### 核心优势
- ✅ 官方授权，稳定可靠
- ✅ 专业服务器网关部署
- ✅ 实时 API 使用统计
- ✅ 无需特殊网络环境

**[查看完整拼车指南 →]({{ carpool_page.url }})**

---

## 📦 安装指南

### 三平台完整支持
- **🪟 Windows** - PowerShell + 图形界面安装
- **🍎 macOS** - Terminal + Homebrew 安装
- **🐧 Linux/WSL2** - 命令行 + 包管理器安装

### 安装流程
1. **Node.js 环境** - 安装 AI 工具运行基础
2. **Claude Code 安装** - npm 全局安装
3. **环境变量配置** - 连接中转服务
4. **高级配置** - Gemini CLI、Codex 集成
5. **验证和使用** - 确保正常工作

### 快速开始
```bash
# 安装 Claude Code
npm install -g @anthropic-ai/claude-code

# 设置环境变量
export ANTHROPIC_BASE_URL="https://use.codecodx.ai/api"
export ANTHROPIC_AUTH_TOKEN="你的API密钥"

# 启动使用
claude
```

**[查看完整安装指南 →](/installation-guide.html)**

---

## 📚 学习资源

{% assign resources_page = site.pages | where: "name", "resources.md" | first %}

### 学习路径
1. **新手入门** - 环境搭建、基础命令
2. **基础掌握** - 提示词编写、代码生成
3. **实战应用** - 项目开发、团队协作
4. **高级优化** - 性能调优、架构设计

### 资源类型
- 🎥 视频教程和文档
- 🔧 工具集成指南
- 📖 最佳实践分享
- 💡 实战案例分析

**[查看完整学习资源 →]({{ resources_page.url }})**


---

## 🚀 快速开始

### 1. 选择服务
根据需求选择拼车或学习资源

### 2. 加入社群
- 📧 Email: contact@codecodex.ai
- 📱 Telegram: [@codecodx_ai](https://t.me/codecodx_ai)

### 3. 开始体验
- 获取 API 授权
- 本地部署配置
- 享受 AI 编程
## 🎯 关于我们

{% assign about_page = site.pages | where: "name", "about.md" | first %}

### 我们的使命
让每个开发者都能轻松掌握 Claude Code，提升编程效率，创造更多可能。

### 核心功能
- 🚗 **拼车指南** - 组队学习，共享资源
- 👥 **活跃群组** - 技术社区，经验交流
- 📚 **学习资源** - 系统化教程指南
- 🔧 **工具集成** - 实用工具推荐

**[了解更多关于我们 →]({{ about_page.url }})**
---
## 📊 实时监控

查看我们的服务状态和 API 使用统计：

🔗 **[API 监控面板](https://use.codecodx.ai/admin-next/api-stats)**

---

## 💬 联系支持

遇到问题？我们随时为您提供帮助：

- **技术支持**：contact@codecodx.ai
- **社群交流**：[@codecodx_ai](https://t.me/codecodx_ai)
- **文档反馈**：[GitHub Issues](https://github.com/codecodx-ai/codecodx.github.io/issues)

---

*© 2025 CodeCodex - 探索 AI 编程的无限可能*