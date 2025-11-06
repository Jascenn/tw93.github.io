---
layout: page
title: Claude Code 安装指南
permalink: /installation-guide.html
---

<div class="install-hero">
  <h1>📦 Claude Code 安装指南</h1>
  <p class="subtitle">覆盖 Windows / macOS / Linux 全平台，从环境准备到首次运行，一步到位。</p>
  <div class="quick-actions">
    <a class="qa-btn" href="/usage-guide.html">🚀 立即上手</a>
    <a class="qa-btn ghost" href="/comprehensive-guide.html">📖 完整指南</a>
  </div>
</div>

## 🎯 选择你的操作系统

<div class="installation-tabs">
  <div class="tab-buttons">
    <button class="tab-button active" data-tab="windows">
      <span class="tab-icon">🪟</span>
      <span class="tab-title">Windows</span>
      <span class="tab-subtitle">PowerShell + 图形界面</span>
    </button>
    <button class="tab-button" data-tab="macos">
      <span class="tab-icon">🍎</span>
      <span class="tab-title">macOS</span>
      <span class="tab-subtitle">Terminal + Homebrew</span>
    </button>
    <button class="tab-button" data-tab="linux">
      <span class="tab-icon">🐧</span>
      <span class="tab-title">Linux/WSL2</span>
      <span class="tab-subtitle">命令行 + 包管理器</span>
    </button>
  </div>

  <div class="tab-contents">
    <div class="tab-content active" id="windows">
      {% include installation/windows.html %}
    </div>

    <div class="tab-content" id="macos">
      {% include installation/macos.html %}
    </div>

    <div class="tab-content" id="linux">
      {% include installation/linux.html %}
    </div>
  </div>
</div>

---

## 🎉 恭喜你！

你已经成功安装并配置了 Claude Code，现在可以开始享受 AI 编程助手带来的便利了。

### 🚀 下一步

1. **开始第一个项目**：在项目目录中运行 `claude`
2. **探索功能**：尝试代码生成、重构、调试等功能
3. **加入社区**：获取更多使用技巧和最佳实践

### 📚 相关资源

- [使用教程](/usage-guide.html) - 详细的使用指南
- [完整指南](/comprehensive-guide.html) - 一站式服务指南
- [拼车服务](/carpool.html) - 团队订阅指南

### 💬 需要帮助？

如果在使用过程中遇到任何问题，可以：

- 查看上方的常见问题解决方案
- 访问 [GitHub Issues](https://github.com/Jascenn/CodeCodex.AI/issues)
- 加入我们的 [Telegram 群组](https://t.me/codecodx_ai)

---

<div class="install-footer-cta" role="contentinfo">
  <strong>🌟 开始你的 AI 编程之旅！</strong>
  <div class="links">
    <a href="/">🏠 返回首页</a>
    <span>·</span>
    <a href="/comprehensive-guide.html">📖 完整指南</a>
    <span>·</span>
    <a href="/carpool.html">🚗 拼车服务</a>
  </div>
  <div class="copyright">© 2025 CodeCodex - 探索 AI 编程的无限可能</div>
</div>

<style>
.installation-tabs {
  margin: 2rem 0;
}

.install-hero {
  margin: 0 0 1.25rem;
}
.install-hero .subtitle {
  margin: .5rem 0 1rem;
  color: #475569;
}
.quick-actions {
  display: flex;
  gap: .75rem;
}
.qa-btn {
  display: inline-block;
  padding: .5rem .9rem;
  border-radius: 8px;
  background: #2563eb;
  color: #fff !important;
  text-decoration: none;
  font-weight: 600;
}
.qa-btn.ghost {
  background: #eef2ff;
  color: #1e293b !important;
}

.tab-buttons {
  display: flex;
  border-bottom: 2px solid #e2e8f0;
  margin-bottom: 2rem;
  gap: 0.5rem;
}

.tab-button {
  background: none;
  border: none;
  padding: 1rem 1.5rem;
  cursor: pointer;
  border-radius: 8px 8px 0 0;
  transition: all 0.3s ease;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 0.25rem;
  min-width: 140px;
  border-bottom: 3px solid transparent;
}

.tab-button:hover {
  background-color: #f7fafc;
}

.tab-button.active {
  background-color: #3182ce;
  color: white;
  border-bottom-color: #3182ce;
}

.tab-icon {
  font-size: 2rem;
}

.tab-title {
  font-size: 1.1rem;
  font-weight: 600;
}

.tab-subtitle {
  font-size: 0.85rem;
  opacity: 0.8;
}

.tab-content {
  display: none;
  padding: 1.5rem;
  background-color: #f7fafc;
  border-radius: 8px;
  border: 1px solid #e2e8f0;
}

.tab-content.active {
  display: block;
}

.install-footer-cta {
  margin-top: 2rem;
  padding: 1.25rem;
  background: #f8fafc;
  border: 1px solid #e2e8f0;
  border-radius: 10px;
  text-align: center;
}
.install-footer-cta .links {
  margin-top: .5rem;
}
.install-footer-cta .links a {
  color: #334155;
  text-decoration: none;
}
.install-footer-cta .links span { color: #94a3b8; margin: 0 .5rem; }
.install-footer-cta .copyright {
  margin-top: .25rem;
  color: #94a3b8;
  font-size: .9rem;
}

@media (max-width: 768px) {
  .tab-buttons {
    flex-direction: column;
  }

  .tab-button {
    flex-direction: row;
    justify-content: flex-start;
    gap: 1rem;
    min-width: auto;
  }

  .tab-icon {
    font-size: 1.5rem;
  }
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const tabButtons = document.querySelectorAll('.tab-button');
  const tabContents = document.querySelectorAll('.tab-content');

  tabButtons.forEach(button => {
    button.addEventListener('click', function() {
      const targetTab = this.getAttribute('data-tab');

      // Remove active class from all buttons and contents
      tabButtons.forEach(btn => btn.classList.remove('active'));
      tabContents.forEach(content => content.classList.remove('active'));

      // Add active class to clicked button and corresponding content
      this.classList.add('active');
      document.getElementById(targetTab).classList.add('active');
    });
  });
});
</script>
