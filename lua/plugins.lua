require("bufferline").setup()
require("mason").setup()
require("gitsigns").setup()
require("lualine").setup()
require("scrollbar").setup()
require("oil").setup()
require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})
require('chartoggle').setup({
  leader = '8',
  keys = { ',', ';' }
})
require("hbac").setup({
  autoclose = true,
  threshold = 3,
  close_command = function(bufnr)
    vim.api.nvim_buf_delete(bufnr, {})
  end,
  close_buffers_with_windows = false,
})
