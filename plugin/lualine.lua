require('lualine').setup {
    options = {
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_c = {},
        lualine_x = {'filetype'},
        lualine_y = {}
    },
}
