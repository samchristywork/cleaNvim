require("mappings")
require("settings")
require("plugins")
require("lsp")

vim.g.copilot_filetypes = { markdown = false }
vim.opt.completeopt = "menu,menuone,noselect"                     -- menuone is default, menu is for showing the menu even if there is only one match, noselect is for not selecting the first match
vim.opt.dictionary = vim.opt.dictionary + "/usr/share/dict/words" -- In insert mode, C-X, C-K will bring up the completion list if omnifunc is enabled

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*"},
  callback = function(ev)
    --vim.cmd('set formatoptions-=cro')
    --vim.cmd('if &columns>100 | TagbarOpen | endif')
  end
})

--- TODO: Fix everything below:
---vnoremap m :'<,'>!xclip -i; xclip -o;/home/sam/tts/tts_command_silent > /dev/null<CR>
---vim.api.nvim_set_keymap('v', 'm', ':"<,">!xclip -i; xclip -o;speak_clipboard<CR>', {})
