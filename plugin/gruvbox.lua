require('gruvbox').setup({
    italic = {
        strings = false,
        operators = false,
        comments = false
    },
    overrides = {
        ["@namespace"] = { link = "GruvboxOrange"},
        String = { link = "GruvboxYellow" }
    }
})
vim.cmd[[colorscheme gruvbox]]
