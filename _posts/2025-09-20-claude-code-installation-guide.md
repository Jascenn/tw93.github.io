---
layout: post
title: "Claude Code 三平台完整安装指南"
date: 2025-09-20 16:00:00
summary: "Windows、macOS、Linux 三大平台 Claude Code 详细安装教程，从环境准备到成功运行一步到位"
categories: [教程, Claude Code]
tags: [AI编程, 安装指南, 环境配置, 跨平台]
---

# Claude Code 三平台完整安装指南

> 这是一份覆盖 Windows、macOS、Linux 三大平台的 Claude Code 详细安装教程，无论你是编程新手还是资深开发者，都能轻松完成安装配置。

## 🎯 选择你的操作系统

| [🪟 Windows](/installation-guide.html#-windows-安装) | [🍎 macOS](/installation-guide.html#-macos-安装) | [🐧 Linux/WSL2](/installation-guide.html#-linux-安装) |
|---|---|---|
| PowerShell + 图形界面 | Terminal + Homebrew | 命令行 + 包管理器 |

## 📋 安装概览

无论哪个平台，Claude Code 的安装都遵循相同的基本流程：

1. **安装 Node.js 环境** - AI 工具的运行基础
2. **安装 Claude Code** - 通过 npm 全局安装
3. **配置环境变量** - 连接到中转服务
4. **验证安装** - 确保一切正常工作
5. **开始使用** - 在项目中体验 AI 编程

## 🚀 快速开始

如果你已经有 Node.js 环境，可以直接运行：

```bash
# 安装 Claude Code
npm install -g @anthropic-ai/claude-code

# 设置环境变量（临时）
export ANTHROPIC_BASE_URL="https://use.codecodx.ai/api"
export ANTHROPIC_AUTH_TOKEN="你的API密钥"

# 启动使用
claude
```

## 🔧 平台特色功能

### Windows 用户
- **PowerShell 优化**：专为 PowerShell 环境优化的安装步骤
- **图形界面支持**：结合命令行和图形界面的安装方式
- **权限管理**：详细的管理员权限和执行策略设置

### macOS 用户
- **Homebrew 集成**：使用 macOS 最流行的包管理器
- **系统权限**：处理 macOS 安全设置和权限问题
- **Terminal 优化**：支持 zsh 和 bash 两种 shell

### Linux 用户
- **多发行版支持**：Ubuntu、Debian、CentOS、Fedora 等
- **包管理器选择**：官方仓库和系统包管理器两种方式
- **权限配置**：用户权限和依赖库安装指导

## 🎯 高级配置

除了基础的 Claude Code 安装，我们还提供：

### Gemini CLI 集成
```bash
export CODE_ASSIST_ENDPOINT="https://use.codecodx.ai/gemini"
export GOOGLE_CLOUD_ACCESS_TOKEN="你的API密钥"
export GOOGLE_GENAI_USE_GCA="true"
```

### Codex 工具支持
配置 `~/.codex/config.toml` 文件，支持 OpenAI API 兼容工具。

### 环境变量管理
- **临时设置**：当前会话有效
- **永久设置**：用户级或系统级配置
- **验证方法**：确保配置正确生效

## 🛠️ 常见问题解决

我们为每个平台整理了详细的问题解决方案：

- **权限错误**：管理员权限、sudo 使用、文件权限
- **环境变量**：配置文件修改、shell 重载、验证方法
- **依赖问题**：缺失库文件、版本兼容、包管理器

## 💡 使用建议

### 新手用户
1. 选择推荐的安装方法（官网下载或 Homebrew）
2. 使用永久环境变量设置
3. 遇到问题先查看常见问题解决方案

### 开发者用户
1. 考虑使用包管理器安装 Node.js
2. 配置高级功能（Gemini CLI、Codex）
3. 设置项目级配置文件

### 团队使用
1. 统一安装方法和配置
2. 共享 API 密钥管理策略
3. 建立故障排除文档

## 📚 相关资源

- **[完整安装指南](/installation-guide.html)** - 三平台详细教程
- **[使用教程](./BLOGGING_GUIDE.md)** - 博客内容发布指南
- **[开发者配置](./DEVELOPER_CONFIG_GUIDE.md)** - 高级配置选项

## 🎉 开始你的 AI 编程之旅

完成安装后，你就可以：

- **智能代码生成**：描述需求，自动生成代码
- **代码重构优化**：改进现有代码结构和性能
- **错误调试分析**：快速定位和修复问题
- **文档注释生成**：自动生成规范的代码文档

Claude Code 将成为你最得力的编程助手，让编程变得更高效、更有趣！

---

### 💬 需要帮助？

- 📖 查看 [完整安装指南](/installation-guide.html)
- 🐛 遇到问题？访问 [GitHub Issues](https://github.com/codecodx-ai/codecodx.github.io/issues)
- 💬 加入社区：[Telegram 群组](https://t.me/codecodx_ai)
- 📧 联系我们：contact@codecodx.ai

**开始探索 AI 编程的无限可能！** 🚀