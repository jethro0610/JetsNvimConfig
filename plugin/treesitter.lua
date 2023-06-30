require 'nvim-treesitter.install'.compilers = { 'clang' }
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "c", "lua", "json", "glsl" },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
  },
}
