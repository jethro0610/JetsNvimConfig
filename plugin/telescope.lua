local builtin = require('telescope.builtin')
local vim = vim

vim.keymap.set('n', '<leader>g', builtin.find_files, { silent = true })
vim.keymap.set('n', '<leader>f', builtin.current_buffer_fuzzy_find, { silent = true })
vim.keymap.set('n', '<leader>h', builtin.live_grep, { silent = true })
