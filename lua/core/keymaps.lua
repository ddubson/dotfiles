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
vim.keymap.set('n', '<leader><leader>', telescope.oldfiles, {})
vim.keymap.set('n', '<leader>g', telescope.live_grep, {})
vim.keymap.set('n', '<leader>b', telescope.buffers, {})
vim.keymap.set('n', '<leader>h', telescope.help_tags, {})
-- End Telescope keymaps

-- nvim-tree keymaps
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
-- End nvim-tree keymaps

-- Smooth scroll plugin -- https://github.com/terryma/vim-smooth-scroll
vim.keymap.set('n', '<c-d>', ':call smooth_scroll#down(&scroll, 4, 2)<CR>')
vim.keymap.set('n', '<c-d>', ':call smooth_scroll#down(&scroll, 4, 2)<CR>')
vim.keymap.set('n', '<c-f>', ':call smooth_scroll#down(&scroll*2, 4, 8)<CR>')
vim.keymap.set('n', '<c-b>', ':call smooth_scroll#up(&scroll*2, 4, 8)<CR>')
