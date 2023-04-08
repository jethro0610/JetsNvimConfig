local vim = vim
local lsp = require 'lspconfig'
local cmp = require 'cmp'

vim.opt.signcolumn = 'yes'
lsp.clangd.setup{}

cmp.setup({
    sources = cmp.config.sources({
      { name = 'nvim_lsp' }
    }),
    mapping = {
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,
        ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end
    }
})
