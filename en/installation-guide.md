---
layout: page
title: Claude Code Installation Guide
permalink: /en/installation-guide.html
lang: en-US
---

<div class="install-hero">
  <h1>📦 Claude Code Installation Guide</h1>
  <p class="subtitle">Complete guide for Windows / macOS / Linux - from environment setup to first run.</p>
  <div class="quick-actions">
    <a class="qa-btn" href="/en/carpool.html">🚀 Get Started</a>
    <a class="qa-btn ghost" href="/comprehensive-guide.html">📖 Full Guide</a>
  </div>
</div>

## 🎯 Choose Your Operating System

<div class="installation-tabs">
  <div class="tab-buttons">
    <button class="tab-button active" data-tab="windows">
      <span class="tab-icon">🪟</span>
      <span class="tab-title">Windows</span>
      <span class="tab-subtitle">PowerShell + GUI</span>
    </button>
    <button class="tab-button" data-tab="macos">
      <span class="tab-icon">🍎</span>
      <span class="tab-title">macOS</span>
      <span class="tab-subtitle">Terminal + Homebrew</span>
    </button>
    <button class="tab-button" data-tab="linux">
      <span class="tab-icon">🐧</span>
      <span class="tab-title">Linux/WSL2</span>
      <span class="tab-subtitle">Command Line + Package Manager</span>
    </button>
  </div>

  <div class="tab-contents">
    <div class="tab-content active" id="windows">
      <h2>🪟 Windows Installation</h2>

      <h3>Step 1: Install Node.js</h3>
      <p><strong>Method 1: Official Installer (Recommended)</strong></p>
      <ol>
        <li>Visit <a href="https://nodejs.org" target="_blank">nodejs.org</a></li>
        <li>Download LTS version (e.g., 20.x)</li>
        <li>Run installer, follow wizard</li>
        <li>Verify installation:</li>
      </ol>
      <pre><code>node --version
npm --version</code></pre>

      <h3>Step 2: Install Claude Code</h3>
      <p>Open PowerShell as Administrator:</p>
      <pre><code>npm install -g @anthropic-ai/claude-code</code></pre>

      <h3>Step 3: Configure Environment Variables</h3>
      <p><strong>Permanent Setup (System Level):</strong></p>
      <ol>
        <li>Right-click "This PC" → Properties</li>
        <li>Advanced system settings → Environment Variables</li>
        <li>Add under "System variables":</li>
      </ol>
      <pre><code>ANTHROPIC_BASE_URL=https://use.codecodex.ai/api
ANTHROPIC_AUTH_TOKEN=your-api-key</code></pre>

      <h3>Step 4: Verify Installation</h3>
      <pre><code>claude --version
claude</code></pre>
    </div>

    <div class="tab-content" id="macos">
      <h2>🍎 macOS Installation</h2>

      <h3>Step 1: Install Node.js</h3>
      <p><strong>Method 1: Using Homebrew (Recommended)</strong></p>
      <pre><code># Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Node.js
brew install node

# Verify
node --version
npm --version</code></pre>

      <h3>Step 2: Install Claude Code</h3>
      <pre><code>npm install -g @anthropic-ai/claude-code</code></pre>

      <h3>Step 3: Configure Environment Variables</h3>
      <p><strong>For zsh (default on macOS):</strong></p>
      <pre><code>echo 'export ANTHROPIC_BASE_URL="https://use.codecodex.ai/api"' >> ~/.zshrc
echo 'export ANTHROPIC_AUTH_TOKEN="your-api-key"' >> ~/.zshrc
source ~/.zshrc</code></pre>

      <p><strong>For bash:</strong></p>
      <pre><code>echo 'export ANTHROPIC_BASE_URL="https://use.codecodex.ai/api"' >> ~/.bash_profile
echo 'export ANTHROPIC_AUTH_TOKEN="your-api-key"' >> ~/.bash_profile
source ~/.bash_profile</code></pre>

      <h3>Step 4: Verify Installation</h3>
      <pre><code>claude --version
claude</code></pre>
    </div>

    <div class="tab-content" id="linux">
      <h2>🐧 Linux/WSL2 Installation</h2>

      <h3>Step 1: Install Node.js</h3>
      <p><strong>Ubuntu/Debian:</strong></p>
      <pre><code>curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Verify
node --version
npm --version</code></pre>

      <p><strong>CentOS/RHEL/Fedora:</strong></p>
      <pre><code>curl -fsSL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo yum install -y nodejs</code></pre>

      <h3>Step 2: Install Claude Code</h3>
      <pre><code>sudo npm install -g @anthropic-ai/claude-code</code></pre>

      <h3>Step 3: Configure Environment Variables</h3>
      <p><strong>For bash:</strong></p>
      <pre><code>echo 'export ANTHROPIC_BASE_URL="https://use.codecodex.ai/api"' >> ~/.bashrc
echo 'export ANTHROPIC_AUTH_TOKEN="your-api-key"' >> ~/.bashrc
source ~/.bashrc</code></pre>

      <p><strong>For zsh:</strong></p>
      <pre><code>echo 'export ANTHROPIC_BASE_URL="https://use.codecodex.ai/api"' >> ~/.zshrc
echo 'export ANTHROPIC_AUTH_TOKEN="your-api-key"' >> ~/.zshrc
source ~/.zshrc</code></pre>

      <h3>Step 4: Verify Installation</h3>
      <pre><code>claude --version
claude</code></pre>
    </div>
  </div>
</div>

---

## 🎉 Congratulations!

You've successfully installed and configured Claude Code. Now you can start enjoying the convenience of an AI programming assistant.

### 🚀 Next Steps

1. **Start Your First Project**: Run `claude` in your project directory
2. **Explore Features**: Try code generation, refactoring, debugging, etc.
3. **Join Community**: Get more tips and best practices

### 📚 Related Resources

- [Carpool Service](/en/carpool.html) - Team subscription guide
- [FAQ](/en/faq.html) - Frequently asked questions
- [About](/en/about.html) - Learn more about Lion CC

### 💬 Need Help?

If you encounter any issues:

- Check the FAQ solutions above
- Visit [GitHub Issues](https://github.com/Jascenn/codecodxai.github.io/issues)
- Join our [Telegram Group](https://t.me/codecodx_ai)
- WeChat: HSQBJ088888888

---

<div class="install-footer-cta" role="contentinfo">
  <h2>🚀 Ready to Get Started?</h2>
  <p>Join Lion CC Claude Code carpool service and enjoy professional AI programming experience</p>
  <div class="cta-buttons">
    <a href="/en/carpool.html" class="cta-primary">View Carpool Plans</a>
    <a href="https://t.me/codecodx_ai" class="cta-secondary">Join Community</a>
  </div>
</div>

<style>
.installation-tabs {
  margin: 2rem 0;
}

.tab-buttons {
  display: flex;
  gap: 1rem;
  margin-bottom: 2rem;
  flex-wrap: wrap;
}

.tab-button {
  flex: 1;
  min-width: 200px;
  padding: 1.5rem;
  border: 2px solid #e0e0e0;
  border-radius: 12px;
  background: white;
  cursor: pointer;
  transition: all 0.3s;
  text-align: left;
}

.tab-button:hover {
  border-color: #4CAF50;
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

.tab-button.active {
  border-color: #4CAF50;
  background: #f1f8f4;
}

.tab-icon {
  font-size: 2rem;
  display: block;
  margin-bottom: 0.5rem;
}

.tab-title {
  font-size: 1.2rem;
  font-weight: bold;
  display: block;
  margin-bottom: 0.25rem;
}

.tab-subtitle {
  font-size: 0.9rem;
  color: #666;
  display: block;
}

.tab-content {
  display: none;
  padding: 2rem;
  border: 1px solid #e0e0e0;
  border-radius: 12px;
  background: #fafafa;
}

.tab-content.active {
  display: block;
}

.install-hero {
  text-align: center;
  padding: 3rem 1rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  border-radius: 16px;
  margin-bottom: 3rem;
}

.install-hero h1 {
  margin: 0 0 1rem 0;
  font-size: 2.5rem;
}

.subtitle {
  font-size: 1.2rem;
  opacity: 0.9;
  margin-bottom: 2rem;
}

.quick-actions {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
}

.qa-btn {
  padding: 0.75rem 2rem;
  background: white;
  color: #667eea;
  text-decoration: none;
  border-radius: 8px;
  font-weight: bold;
  transition: all 0.3s;
}

.qa-btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.2);
}

.qa-btn.ghost {
  background: transparent;
  border: 2px solid white;
  color: white;
}

.install-footer-cta {
  text-align: center;
  padding: 3rem 1rem;
  background: #f1f8f4;
  border-radius: 16px;
  margin-top: 3rem;
}

.cta-buttons {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
  margin-top: 2rem;
}

.cta-primary, .cta-secondary {
  padding: 0.75rem 2rem;
  text-decoration: none;
  border-radius: 8px;
  font-weight: bold;
  transition: all 0.3s;
}

.cta-primary {
  background: #4CAF50;
  color: white;
}

.cta-secondary {
  background: white;
  color: #4CAF50;
  border: 2px solid #4CAF50;
}

.cta-primary:hover, .cta-secondary:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.2);
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const tabButtons = document.querySelectorAll('.tab-button');
  const tabContents = document.querySelectorAll('.tab-content');

  tabButtons.forEach(button => {
    button.addEventListener('click', () => {
      const targetTab = button.getAttribute('data-tab');

      // Remove active class from all buttons and contents
      tabButtons.forEach(btn => btn.classList.remove('active'));
      tabContents.forEach(content => content.classList.remove('active'));

      // Add active class to clicked button and corresponding content
      button.classList.add('active');
      document.getElementById(targetTab).classList.add('active');
    });
  });
});
</script>
