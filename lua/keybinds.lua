local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

vim.g.mapleader='<space>'
vim.g.maplocalleader='<space>'

keymap('t', '<ESC>', '<C-\\><C-n>', opt)

keymap('n', '<C-e>', '<C-e><C-e><C-e>', opt)
keymap('n', '<C-y>', '<C-y><C-y><C-y>', opt)

-- keymap('n', 'I', 'gI', opt)
keymap('n', 'A', 'g_a', opt)
keymap('n', 'n', 'gn', opt)
keymap('n', 'N', 'gN', opt)
keymap('v', 'n', '<ESC>ngn', opt)
keymap('v', 'N', '<ESC>NgN', opt)

keymap('n', '<A-q>', '<C-w>q', opt)
keymap('n', '<A-w>', '<C-w>w', opt)
keymap('n', '<A-r>', '<C-w>r', opt)
keymap('n', '<A-c>', '<C-w>c', opt)

keymap('n', '<A-h>', '<C-w>h', opt)
keymap('n', '<A-j>', '<C-w>j', opt)
keymap('n', '<A-k>', '<C-w>k', opt)
keymap('n', '<A-l>', '<C-w>l', opt)

keymap('n', '<A-H>', '<C-w>H', opt)
keymap('n', '<A-J>', '<C-w>J', opt)
keymap('n', '<A-K>', '<C-w>K', opt)
keymap('n', '<A-L>', '<C-w>L', opt)

keymap('n', '<A-Left>', '<C-w><Left>', opt)
keymap('n', '<A-Down>', '<C-w><Down>', opt)
keymap('n', '<A-Up>', '<C-w><Up>', opt)
keymap('n', '<A-Right>', '<C-w><Right>', opt)

keymap('n', '<A-S>', '<C-w>s', opt)
keymap('n', '<A-V>', '<C-w>v', opt)

keymap('n', '<A-<>', '<C-w><', opt)
keymap('n', '<A->>', '<C-w>>', opt)
keymap('n', '<A-=>', '<C-w>=', opt)
keymap('n', '<A-+>', '<C-w>+', opt)
keymap('n', '<A-->', '<C-w>-', opt)

keymap('v', '<', '<gv', opt)
keymap('v', '>', '>gv', opt)

keymap('n', '<C-\\>', '<cmd>Ex<CR>', opt)
keymap('i', '<C-\\>', '<cmd>Ex<CR>', opt)
keymap('v', '<C-\\>', '<cmd>Ex<CR>', opt)

