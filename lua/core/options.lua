local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

-- Behavior
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.mouse = "a"
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
