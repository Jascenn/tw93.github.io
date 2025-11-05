---
layout: page
title: 常见问题
permalink: /faq.html
comments: false
description: Claude Code 拼车常见问题解答，包含价格、部署、技术、安全等25个常见问题，为您解答所有疑问
keywords: Claude Code常见问题,Claude拼车FAQ,Claude部署问题,Claude价格说明,Claude技术支持,Claude使用教程
---

<div style="text-align: center; margin: 40px 0;">
  <img src="/images/config/logo.svg" alt="Lion CC" style="height: 120px; width: auto;">
</div>

## ❓ 常见问题解答

### 💰 关于价格与套餐

#### Q1: 包车和拼车有什么区别？
**A:**
- **包车**：¥2200/月，1人独享全部算力，适合重度用户
- **拼车**：最低¥366/月（6人），算力平均分配，性价比最高

#### Q2: 拼车支持几人组队？
**A:** 支持 1-6 人灵活选择：
- 6人拼车：¥366/人月
- 5人拼车：¥440/人月
- 4人拼车：¥550/人月
- 3人拼车：¥733/人月
- 2人拼车：¥1100/人月
- 1人包车：¥2200/月

#### Q3: 价格包含什么？
**A:**
- ✅ Claude Max $200/月 官方订阅
- ✅ 服务器托管 + 网关 IP 系统
- ✅ 客户管理系统使用权
- ✅ 技术支持和部署指导
- ✅ 预约上车送 ChatGPT Codex 免费体验

---

### 🚀 关于部署与使用

#### Q4: 需要科学上网吗？
**A:** 不需要！Lion CC 网关系统支持国内网络直连，无需 VPN 或代理。

#### Q5: 支持哪些操作系统？
**A:** 支持全平台：
- Windows 10/11
- macOS (Intel & Apple Silicon)
- Linux (Ubuntu/Debian/CentOS 等)

#### Q6: 部署难吗？需要技术基础吗？
**A:** 非常简单，只需 5 步：
1. 联系客服预约
2. 完成官方账号订阅
3. 本地安装 Claude Code
4. 配置授权信息
5. 验证部署成功

详见 [部署教程](/deployment-guide.html)

#### Q7: 多个设备可以同时使用吗？
**A:** 可以！在所有设备上配置相同的 API Key 即可。算力会在车队成员间平均分配。

#### Q8: 配置文件放在哪里？
**A:**
- macOS/Linux: `~/.bashrc` 或 `~/.zshrc`
- Windows: 系统环境变量

---

### 🔧 技术相关

#### Q9: 什么是网关 IP 系统？
**A:** Lion CC 的核心技术方案：
```
用户本地 Claude Code
    ↓
Lion CC 网关系统（智能路由）
    ↓
Claude 官方 API 服务器
```
优势：
- 绕过 CC 封锁
- 无 IP 环境限制
- 国内直连
- 防 IP 降智

#### Q10: 如何查看我的使用量？
**A:** 访问客户管理系统仪表盘：
[https://use.codecodex.ai/admin-next/api-stats](https://use.codecodex.ai/admin-next/api-stats)

可实时查看：
- 调用次数
- Token 输入输出消耗
- 算力分配情况
- 使用历史记录

#### Q11: API Key 忘记了怎么办？
**A:** 联系群管理拼车助手微信 **LionCC.ai@拼车助手**，客服会重新发送授权信息。

#### Q12: 支持 API 调用吗？
**A:** 支持！配置 `CLAUDE_API_BASE` 和 `CLAUDE_API_KEY` 后，可通过 API 方式调用。

---

### 🛡️ 关于安全与稳定性

#### Q13: 服务稳定吗？
**A:** 已稳定服务市场近 3 个月，采用：
- 多服务器分布式部署
- 24/7 系统健康检查
- 智能路由 + 负载均衡
- 动态 IP 池切换

#### Q14: 账号安全吗？
**A:**
- ✅ 使用官方正版订阅
- ✅ 专业团队统一管理
- ✅ 独立授权密钥
- ✅ 完善的权限控制

#### Q15: 会不会被封号？
**A:**
- 使用官方授权账号，合规使用
- 网关系统防止 IP 异常
- 3个月稳定运营记录
- 出现问题客服及时响应

---

### 💳 关于付款与续费

#### Q16: 如何付款？
**A:** 添加群管理拼车助手微信 **LionCC.ai@拼车助手**，客服会提供付款方式。

#### Q17: 到期后如何续费？
**A:** 到期前客服会提醒续费，保证服务连续性。

#### Q18: 可以退款吗？
**A:** 具体退款政策请咨询客服。建议先了解服务详情再决定购买。

#### Q19: 支持开发票吗？
**A:** 请联系客服咨询发票事宜。

---

### 🤝 关于代理与合作

#### Q20: 可以成为代理吗？
**A:** 欢迎代理合作！请联系群管理拼车助手微信 **LionCC.ai@拼车助手** 洽谈合作细节。

#### Q21: 有推荐奖励吗？
**A:** 请联系客服了解推荐政策。

---

### 🆚 对比其他方案

#### Q22: 和官方直接订阅有什么区别？
**A:**

| 对比项 | Lion CC 拼车 | 官方直接订阅 |
|--------|-------------|--------------|
| 价格 | ¥366/月起 | $200/月 (≈¥1450) |
| 国内使用 | 直连可用 | 需要 VPN |
| IP 限制 | 无限制 | 有地区限制 |
| 技术支持 | 中文客服 | 英文支持 |
| 部署难度 | 协助部署 | 自行配置 |

#### Q23: 和其他拼车平台有什么不同？
**A:**
- ✅ 稳定运营 3 个月（有实际案例）
- ✅ 服务器托管 + 网关系统（技术方案成熟）
- ✅ 实时监控仪表盘（透明可查）
- ✅ 灵活 1-6 人组队（不是固定人数）
- ✅ 送 ChatGPT Codex 体验（额外福利）

---

### 🎯 关于其他服务

#### Q24: VibeCodingAPI.ai 是什么？
**A:** Lion CC 的 AI 算力平台，提供：
- ChatGPT / Claude / Gemini / Grok / DeepSeek API
- Claude Code / ChatGPT Codex 编程工具 API
- 官网原生防 IP 降智
- 满血版国内镜像站

访问：[VibeCodingAPI.ai](https://VibeCodingAPI.ai)

#### Q25: 小智机器人是什么？
**A:** Lion CC 开发的 AI 机器人软硬件一体化产品，详情咨询客服。

---

### 📞 还有其他问题？

如果以上内容没有解答你的疑问，请通过以下方式联系我们：

<div style="text-align: center; margin: 30px 0;">
  <img src="/images/qrcode.jpg" alt="Lion CC 拼车群二维码" style="max-width: 260px; border-radius: 10px; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">
  <p style="margin-top: 15px;"><strong>扫码加入拼车群咨询</strong></p>
</div>

- **群管理拼车助手**: LionCC.ai@拼车助手（微信）
- **官方博客**: [LionCC.ai](https://LionCC.ai) - 所罗门博客
- **拼车官网**: [codecodex.ai](https://codecodex.ai)
- **算力平台**: [VibeCodingAPI.ai](https://VibeCodingAPI.ai)
- **管理后台**: [use.codecodex.ai/admin-next/api-stats](https://use.codecodex.ai/admin-next/api-stats)
- **Telegram**: [@codecodex_ai](https://t.me/codecodex_ai)

---

## 🚀 快速导航

- [拼车指南](/carpool.html) - 了解套餐详情
- [部署教程](/deployment-guide.html) - 学习如何部署
- [安装指南](/installation-guide.html) - 本地安装步骤
- [关于我们](/about.html) - 了解 Lion CC

---

> 💼 **温馨提示**：此方案已稳定服务市场近 3 个月，支持 1-6 人灵活拼车使用，欢迎咨询上车和代理合作！