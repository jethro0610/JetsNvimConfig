local get_hex = require('cokeline/utils').get_hex

function getPrimary(buffer)
    return
        buffer.is_focused
        and get_hex('TabLineSel', 'fg')
        or get_hex('Normal', 'fg')
end

function getSecondary(buffer)
    return
        buffer.is_focused
        and get_hex('TabLineSel', 'bg')
        or get_hex('Normal', 'bg')
end

function getBackground(buffer)
    return
        buffer.is_focused
        and get_hex('TabLine', 'bg')
        or get_hex('TabLine', 'bg')
end

require('cokeline').setup({
    default_hl = {
        fg = function(buffer) return getPrimary(buffer) end,
        bg = function(buffer) return getSecondary(buffer) end,
    },

    components = {
        -- {
        --     text = '',
        --     fg = function(buffer) return getSecondary(buffer) end,
        --     bg = function(buffer) return getBackground(buffer) end,
        -- },
        {
            text = ' '
        },
        {
            text = function(buffer) return buffer.devicon.icon end,
            fg = function(buffer) return buffer.devicon.color end,
        },
        {
            text = function(buffer) return buffer.index .. ': ' end,
        },
        {
            text = function(buffer) return buffer.filename .. ' ' end,
        },
        -- {
        --     text = '',
        --     fg = function(buffer) return getSecondary(buffer) end,
        --     bg = function(buffer) return getBackground(buffer) end,
        -- },
        {
            text = ' '
        }
    },
})

vim.keymap.set('n', '<S-Tab>', '<Plug>(cokeline-focus-prev)', { silent = true })
vim.keymap.set('n', '<Tab>', '<Plug>(cokeline-focus-next)', { silent = true })
for i = 1,9 do
  vim.keymap.set('n', ('t%s'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), { silent = true })
end
