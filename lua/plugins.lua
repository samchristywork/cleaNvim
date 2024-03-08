require("bufferline").setup{}
require("mason").setup()
require("gitsigns").setup()
require("lualine").setup()
require("scrollbar").setup()
require("oil").setup()
require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
