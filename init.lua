local vim = vim
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.g.mapleader = ','
vim.wo.number = true
vim.o.clipboard = 'unnamedplus'
vim.o.updatetime = 300
vim.o.termguicolors = true

vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('n', '<C-x>', ':bd<CR>', { silent = true})

vim.api.nvim_command('autocmd BufRead,BufNewFile *.hlsli setfiletype hlsl')
require('plugins')
