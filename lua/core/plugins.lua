local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer plugin manager
  use 'wbthomason/packer.nvim'

  -- Catppuccin theme
  use { 'catppuccin/nvim', as = 'catppuccin' }

  -- nvim-tree nav panel
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'

  -- non-LSP stuff
  use 'nvimtools/none-ls.nvim'

  -- Mason (LSP)
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

  -- Code auto-completions
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- nvim-cmp pairing with LuaSnip
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Treesitter (code highlighting)
  use 'nvim-treesitter/nvim-treesitter'

  -- Surround
  use {
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  }

  -- Auto completing tags
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'

  -- Telescope related plugins
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.5', requires = { { 'nvim-lua/plenary.nvim' } } }
  use 'nvim-telescope/telescope-ui-select.nvim'

  -- Smooth scroll
  use 'terryma/vim-smooth-scroll'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
