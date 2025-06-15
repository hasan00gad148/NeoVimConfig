# 🛠️ My Neovim Configuration

Welcome to my Neovim setup! This configuration is tailored for performance, productivity, and a modern development experience using **Lua**, **Lazy.nvim**, and a carefully curated set of plugins.

---

## 🚀 Features

- ⚡ Blazing fast startup with [lazy.nvim](https://github.com/folke/lazy.nvim)
- 🌈 Beautiful UI with treesitter-based syntax highlighting
- 🧠 Autocompletion via `nvim-cmp` + LSP
- 🔍 Fuzzy finding and live grep with `telescope.nvim`
- 🧱 File explorer with `nvim-tree.lua` or `neo-tree`
- 🗺️ Easy navigation with custom keymaps and motions
- 🧩 Extensible and modular Lua-based plugin config
- 🛠️ Git signs and diffs via `gitsigns.nvim` and built-in diff mode



## 📁 File Structure
```bash
~/.config/nvim/
|
├── after
├── init.lua
├── lazy-lock.json
└── lua
    ├── core
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins
        ├── init.lua
        ├── lsp.lua
        ├── misc.lua
        └── tree.lua
```
