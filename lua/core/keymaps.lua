local keymap = vim.keymap

-- leader key mapping to space
-------------------------

-- General Keymaps --
---------------------
-- Save current file
keymap.set('n', '<leader>w', ':w<CR>')
-- Quit current window
keymap.set('n', '<leader>q', ':q<CR>')
-- Clear search highlights
keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Navigation --
----------------
-- Half-page jump down and center cursor
keymap.set('n', '<C-d>', '<C-d>zz')
-- Half-page jump up and center cursor
keymap.set('n', '<C-u>', '<C-u>zz')
-- Next search result with centered view
keymap.set('n', 'n', 'nzzzv')
-- Previous search result with centered view
keymap.set('n', 'N', 'Nzzzv')
-- move selected text up and down 
keymap.set({'x','n'}, '<A-k>', ":m '<-2<CR>gv=gv", {desc = '', silent = true})
keymap.set({'x','n'},'<A-j>', ":m '>+1<CR>gv=gv", {desc = '', silent = true}) 

-- Window Management --
----------------------
-- Vertical split
keymap.set('n', '<leader>sv', '<C-w>v')
-- Horizontal split
keymap.set('n', '<leader>sh', '<C-w>s')
-- Equalize window sizes
keymap.set('n', '<leader>se', '<C-w>=')
-- Close current split
keymap.set('n', '<leader>sx', ':close<CR>')

-- Tab Management --
-------------------
-- Open new tab
keymap.set('n', '<leader>to', ':tabnew<CR>')
-- Close current tab
keymap.set('n', '<leader>tx', ':tabclose<CR>')
-- Next tab
keymap.set('n', '<leader>tn', ':tabn<CR>')
-- Previous tab
keymap.set('n', '<leader>tp', ':tabp<CR>')

-- Buffer Navigation --
----------------------
-- Next buffer
keymap.set('n', '<S-l>', ':bnext<CR>')
-- Previous buffer
keymap.set('n', '<S-h>', ':bprevious<CR>')

local keymap = vim.keymap.set
local opts = { silent = true, noremap = true }

-- LuaSnip (Snippets) --
------------------------
-- Jump forward in snippet placeholders
keymap({ "i", "s" }, "<C-k>", function() require("luasnip").jump(1) end, opts)
-- Jump backward in snippet placeholders
keymap({ "i", "s" }, "<C-j>", function() require("luasnip").jump(-1) end, opts)

-- Gitsigns (Git Integration) --
--------------------------------
-- Next git hunk (or diff change in diff mode)
keymap("n", "]c", function() if vim.wo.diff then return "]c" else require("gitsigns").nav_hunk("next") end end, { expr = true })
-- Previous git hunk (or diff change in diff mode)
keymap("n", "[c", function() if vim.wo.diff then return "[c" else require("gitsigns").nav_hunk("prev") end end, { expr = true })

-- Diffview (Git Diff Tools) --
-------------------------------
-- Open diff view
keymap("n", "<leader>gd", ":DiffviewOpen<CR>", opts)
-- View file history
keymap("n", "<leader>gh", ":DiffviewFileHistory<CR>", opts)
-- Close diff view
keymap("n", "<leader>gq", ":DiffviewClose<CR>", opts)

-- DAP (Debugging) --
---------------------
-- Start/continue debugging
keymap("n", "<F5>", function() require("dap").continue() end, opts)
-- Step over
keymap("n", "<F10>", function() require("dap").step_over() end, opts)
-- Step into
keymap("n", "<F11>", function() require("dap").step_into() end, opts)
-- Step out
keymap("n", "<F12>", function() require("dap").step_out() end, opts)
-- Toggle breakpoint
keymap("n", "<leader>b", function() require("dap").toggle_breakpoint() end, opts)
-- Set conditional breakpoint
keymap("n", "<leader>B", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, opts)

-- DAP UI --
------------
-- Toggle debug UI
keymap("n", "<leader>du", function() require("dapui").toggle() end, opts)
-- Evaluate expression under cursor
keymap("n", "<leader>de", function() require("dapui").eval() end, opts)

-- Telescope (Fuzzy Finder) --
------------------------------
-- Find files
keymap("n", "<leader>ff", require("telescope.builtin").find_files, opts)
-- Live grep in files
keymap("n", "<leader>fg", require("telescope.builtin").live_grep, opts)
-- List open buffers
keymap("n", "<leader>fb", require("telescope.builtin").buffers, opts)
-- Search help tags
keymap("n", "<leader>fh", require("telescope.builtin").help_tags, opts)
-- Search document symbols (LSP)
keymap("n", "<leader>fs", require("telescope.builtin").lsp_document_symbols, opts)
-- Find references (LSP)
keymap("n", "<leader>fr", require("telescope.builtin").lsp_references, opts)

