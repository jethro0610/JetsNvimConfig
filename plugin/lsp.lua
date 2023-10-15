local vim = vim
local lsp = require 'lspconfig'

vim.opt.signcolumn = 'yes'
lsp.clangd.setup{}
lsp.tsserver.setup{}
lsp.pyright.setup{}

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    -- vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, opts)
  end
})
