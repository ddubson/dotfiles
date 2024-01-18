vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
  git = {
    enable = true,
  },
  renderer = {
    group_empty = true,
  }
})
