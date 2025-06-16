
# 🛠️ My Neovim Configuration

Welcome to my Neovim setup! This configuration is designed for **performance**, **productivity**, and a modern development experience using **Lua**, **Lazy.nvim**, and a well-curated set of plugins.

---

## 🚀 Features

- ⚡ **Fast startup** with [lazy.nvim](https://github.com/folke/lazy.nvim)
- 🌈 **Beautiful UI** with Tree-sitter-based syntax highlighting
- 🧠 **Smart autocompletion** with `nvim-cmp` and built-in LSP support
- 🔍 **Fuzzy finding** and live grep using `telescope.nvim`
- 🯡 **File explorer** with `nvim-tree.lua` or `neo-tree`
- 🗽 **Custom keymaps** and motions for fast navigation
- 🧩 **Modular and extensible** Lua-based plugin system
- 🛠️ **Git integration** with `gitsigns.nvim` and built-in diff view

---

## 📦 Dependencies

Make sure the following tools are installed on your system:

- [`ripgrep`](https://github.com/BurntSushi/ripgrep)
- [`xclip`](https://github.com/astrand/xclip) (for clipboard support on Linux)
- [`node.js`](https://nodejs.org/) (for some LSP servers and plugins)
- [`python`](https://www.python.org/) (for Python LSP and related plugins)

---

## 📁 File Structure

```
~/.config/nvim/
├── after
├── init.lua
├── lazy-lock.json
└── lua
    ├── core
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins
        ├── init.lua
        ├── lsp.lua
        ├── misc.lua
        └── tree.lua
```

---

## 🧠 Tips

- Use `:Lazy` to manage plugins.
- Customize keymaps in `lua/core/keymaps.lua`.
- Configure LSP and completion in `lua/plugins/lsp.lua`.

---



