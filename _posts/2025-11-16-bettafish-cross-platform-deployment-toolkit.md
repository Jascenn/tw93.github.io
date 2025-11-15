---
layout: post
title: "BettaFish 一键部署工具包 - 使用指南"
date: 2025-11-16 08:00:00 +0800
summary: "BettaFish 一键部署工具包，双击运行即可完成部署。支持 Windows、macOS、Linux 三大平台，5-10 分钟完成，无需技术背景。"
categories: Tech
tags: [BettaFish, 一键部署, 跨平台工具, 自动化部署]
author: LION CC
---

> **工具作者**: Jascen（[codecodex.ai](https://codecodex.ai)）
>
> **工具版本**: v2.1.0
> **支持平台**: Windows / macOS / Linux
> **部署时间**: 5-10 分钟

---

## 📦 获取工具包

### GitHub 下载

```bash
git clone https://github.com/Jascenn/deployment-scripts-hub.git
cd deployment-scripts-hub/bettafish
```

### 通过社群获取

> **🎁 福利**: 扫描下方二维码加入 codecodex.ai 社群，获取工具包 + 技术支持 + VibeCoding API 优惠

<div id="qrcode-modal" style="display: none; position: fixed; top: 0; left: 0; width: 100%; background: rgba(0,0,0,0.8); z-index: 9999; justify-content: center; align-items: center;" onclick="hideQRCode()">
  <div style="background: white; padding: 30px; border-radius: 15px; text-align: center; max-width: 400px;" onclick="event.stopPropagation()">
    <h3 style="margin-top: 0; color: #333;">加入 CodeCodex 技术社群</h3>
    <img src="/images/wechat-assistant-qrcode.jpg" alt="CodeCodex 技术助手微信二维码" style="width: 100%; max-width: 300px; border-radius: 10px; margin: 20px 0;">
    <p style="color: #666; font-size: 14px;">微信扫码添加技术助手，备注：<strong>BettaFish工具包</strong></p>
    <p style="color: #999; font-size: 12px; margin-top: 5px;">获取工具包 + 技术支持 + VibeCoding API 优惠</p>
    <button onclick="hideQRCode()" style="background: #0066cc; color: white; border: none; padding: 10px 30px; border-radius: 5px; cursor: pointer; font-size: 16px; margin-top: 10px;">关闭</button>
  </div>
</div>

<script>
function showQRCode() {
  document.getElementById('qrcode-modal').style.display = 'flex';
  document.body.style.overflow = 'hidden';
}
function hideQRCode() {
  document.getElementById('qrcode-modal').style.display = 'none';
  document.body.style.overflow = 'auto';
}
document.addEventListener('keydown', function(e) {
  if (e.key === 'Escape') hideQRCode();
});
</script>

---

## 🔑 准备 API 密钥

部署前需要准备 AI API 密钥：

**推荐：VibeCoding API**
- 官网: [https://vibecodingapi.ai](https://vibecodingapi.ai)
- 格式: `sk-xxxxxxxxxxxxx`
- 🎁 通过社群注册可获优惠

**其他选择**：OpenAI、Claude、Gemini 等兼容 API

**可选 API**（增强搜索功能）：
- Tavily API: [https://tavily.com](https://tavily.com)
- Bocha API: [https://bocha.ai](https://bocha.ai)

---

## 🪟 Windows 使用

### 快速开始

```
1. 进入 deployment-scripts-hub/bettafish/Windows 文件夹
2. 双击 menu.bat
3. 输入 1 选择部署
4. 按提示输入 API 密钥
5. 等待完成（约 5-10 分钟）
```

### 菜单选项

```
1) 部署/更新 BettaFish   - 首次使用选这个
2) 系统诊断             - 查看系统状态
3) 智能修复 (fix-all)   - 出问题时用这个
4) 启动服务
5) 停止服务
6) 查看日志
```

### 快捷方式

- **快速部署**: 双击 `deploy.bat`
- **智能修复**: 双击 `fix-all.bat`（自动修复 9 类常见问题）

---

## 🍎 macOS 使用

### 快速开始

```bash
# 1. 进入目录
cd deployment-scripts-hub/bettafish/Linux_macOS

# 2. 启动菜单
./menu.sh

# 3. 选择 1 进行部署
# 4. 按提示输入 API 密钥
```

### 直接部署

```bash
./docker-deploy.sh
```

---

## 🐧 Linux 使用

### 快速开始

```bash
# 1. 进入目录
cd deployment-scripts-hub/bettafish/Linux_macOS

# 2. 启动菜单
./menu.sh

# 或直接部署
./docker-deploy.sh
```

---

## ❓ 常见问题

### Q1: 需要什么前置条件？

**A**:
- Docker Desktop（Windows/macOS）或 Docker Engine（Linux）
- API 密钥（VibeCoding 或其他）

### Q2: Windows 脚本显示乱码怎么办？

**A**: 双击 `fix-all.bat` 自动修复

### Q3: Docker 未启动怎么办？

**A**:
- Windows/macOS: 启动 Docker Desktop 或运行 `fix-all.bat`
- Linux: `sudo systemctl start docker`

### Q4: 部署后如何访问？

**A**: 浏览器打开 `http://localhost:5001`

### Q5: 如何更新？

**A**: 重新运行部署脚本（会保留配置）

### Q6: 与 [LionCC API 配置指南](/2025-11-07/bettafish-lioncc-api-deployment-guide.html) 有什么区别？

**A**:
- **配置指南（11-07）**: 手动配置，适合技术用户
- **工具包（本文）**: 自动化部署，适合所有用户

---

## 🔗 相关资源

- **BettaFish 项目**: [https://github.com/666ghj/BettaFish](https://github.com/666ghj/BettaFish)
- **部署工具包**: [https://github.com/Jascenn/deployment-scripts-hub](https://github.com/Jascenn/deployment-scripts-hub)
- **VibeCoding API**: [https://vibecodingapi.ai](https://vibecodingapi.ai)
- **配置详解**: [BettaFish LionCC API 配置指南](/2025-11-07/bettafish-lioncc-api-deployment-guide.html)

---

## 🎉 开始使用

**Windows**: 双击 `menu.bat`
**macOS/Linux**: 运行 `./menu.sh`

有问题？<a href="#" onclick="showQRCode(); return false;" style="color: #0066cc;">加入技术社群</a>获取支持

---

**更新日志**:
- 2025-11-16: v2.1.0 发布
  - 支持 Windows/macOS/Linux
  - 新增 fix-all 智能修复工具
  - 新增交互式菜单系统
  - 完全自动化部署流程
