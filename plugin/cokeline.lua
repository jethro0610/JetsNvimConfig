local get_hex = require('cokeline/utils').get_hex

function getPrimary(buffer)
    return
        buffer.is_focused
        and get_hex('ColorColumn', 'bg')
        or get_hex('Normal', 'fg')
end

function getSecondary(buffer)
    return
        buffer.is_focused
        and get_hex('Normal', 'fg')
        or get_hex('ColorColumn', 'bg')
end

function getBackground(buffer)
    return
        buffer.is_focused
        and get_hex('ColorColumn', 'bg')
        or get_hex('ColorColumn', 'bg')
end

require('cokeline').setup({
    default_hl = {
        fg = function(buffer) return getPrimary(buffer) end,
        bg = function(buffer) return getSecondary(buffer) end,
    },

    components = {
        {
            text = '',
            fg = function(buffer) return getSecondary(buffer) end,
            bg = function(buffer) return getBackground(buffer) end,
        },
        {
            text = function(buffer) return buffer.devicon.icon end,
            fg = function(buffer) return buffer.devicon.color end,
        },
        {
            text = function(buffer) return buffer.filename .. ' ' end,
        },
        {
            text = '',
            delete_buffer_on_left_click = true,
        },
        {
            text = '',
            fg = function(buffer) return getSecondary(buffer) end,
            bg = function(buffer) return getBackground(buffer) end
        },
        {
            text = ' ',
            bg = function(buffer) return getBackground(buffer) end,
        }
    },
})
