require('nvim-tree').setup({})
local vim = vim
vim.keymap.set('n', '<leader>o', ':NvimTreeToggle<CR>', {})
