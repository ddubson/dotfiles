-- <Space> key is the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.wo.number = true

-- use spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Telescope keymaps
local telescope = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', telescope.find_files, {})
vim.keymap.set('n', '<Space><Space>', telescope.oldfiles, {})
vim.keymap.set('n', '<Space>g', telescope.live_grep, {})
vim.keymap.set('n', '<Space>b', telescope.buffers, {})
vim.keymap.set('n', '<Space>h', telescope.help_tags, {})
-- End Telescope keymaps

-- nvim-tree keymaps
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
-- End nvim-tree keymaps
