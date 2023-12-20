require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver" }
})

-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.tsserver.setup({})
lspconfig.lua_ls.setup({})

-- Configure keymap
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
