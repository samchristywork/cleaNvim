require("mappings")
require("settings")
require("plugins")
require("lsp")
require("snippets")

-- Go back to the last cursor position when a file is opened
vim.api.nvim_create_autocmd({'BufWinEnter'}, {
  pattern = '*',
  command = 'silent! normal! g`"zv',
})

-- Allow tabs in Go files
vim.api.nvim_create_autocmd({'BufWinEnter'}, {
  pattern = '*.go',
  command = 'setlocal noexpandtab',
})

-- Set formatoptions to tql for all files
vim.api.nvim_create_autocmd({'BufWinEnter'}, {
  pattern = '*',
  callback = function()
    vim.opt.formatoptions = 'tql';
  end
})

vim.g.copilot_filetypes = { markdown = false }
vim.opt.completeopt = "menu,menuone,noselect"                     -- menuone is default, menu is for showing the menu even if there is only one match, noselect is for not selecting the first match
vim.opt.dictionary = vim.opt.dictionary + "/usr/share/dict/words" -- In insert mode, C-X, C-K will bring up the completion list if omnifunc is enabled
