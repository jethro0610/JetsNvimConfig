require('gruvbox').setup({
    italic = false,
    overrides = {
        ["@namespace"] = { link = "GruvboxOrange"},
        String = { link = "GruvboxYellow" }
    }
})
vim.cmd[[colorscheme gruvbox]]
