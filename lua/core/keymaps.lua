local keymap = vim.keymap

-- General
keymap.set('n', '<leader>w', ':w<CR>')
keymap.set('n', '<leader>q', ':q<CR>')
keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Navigation
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

-- Window management
keymap.set('n', '<leader>sv', '<C-w>v') -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s') -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=') -- make split windows equal width
keymap.set('n', '<leader>sx', ':close<CR>') -- close current split window

-- Tab management
keymap.set('n', '<leader>to', ':tabnew<CR>') -- open new tab
keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close current tab
keymap.set('n', '<leader>tn', ':tabn<CR>') -- go to next tab
keymap.set('n', '<leader>tp', ':tabp<CR>') -- go to previous tab

-- Buffer navigation
keymap.set('n', '<S-l>', ':bnext<CR>')
keymap.set('n', '<S-h>', ':bprevious<CR>')

-- Plugin keymaps will be in their respective files
