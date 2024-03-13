require("mappings")
require("settings")
require("plugins")
require("lsp")
require("snippets")

vim.g.copilot_filetypes = { markdown = false }
vim.opt.completeopt = "menu,menuone,noselect"                     -- menuone is default, menu is for showing the menu even if there is only one match, noselect is for not selecting the first match
vim.opt.dictionary = vim.opt.dictionary + "/usr/share/dict/words" -- In insert mode, C-X, C-K will bring up the completion list if omnifunc is enabled
