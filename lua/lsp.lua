local currentNamespace = vim.api.nvim_create_namespace("custom")

vim.api.nvim_create_autocmd({
  "BufAdd",
  "TextChanged",
  "TextChangedI",
  "BufEnter",
  "BufWinEnter",
  "VimEnter",
  "BufRead",
  "BufNewFile"
},
{
  pattern = { "*" },
  callback = function()
    local currentBuf = vim.api.nvim_get_current_buf()
    vim.diagnostic.reset(currentNamespace, currentBuf)

    local diagnostics = {}

    for lnum = 1, vim.fn.line('$') do
      local line = vim.fn.getline(lnum)
      if string.match(line, 'TODO') then
        table.insert(diagnostics,
        {
          bufnr = currentBuf,
          lnum = lnum - 1,
          end_lnum = lnum - 1,
          col = 1,
          end_col = 1,
          severity = vim.diagnostic.severity.INFO,
          message = "TODO",
          source = 'test'
        })
      end

      if string.len(line) > 80 then
        table.insert(diagnostics,
        {
          bufnr = currentBuf,
          lnum = lnum - 1,
          end_lnum = lnum - 1,
          col = 80,
          end_col = 80,
          severity = vim.diagnostic.severity.INFO,
          message = "Line too long",
          source = 'test'
        })
      end
    end
    vim.diagnostic.set(currentNamespace, currentBuf, diagnostics)
  end,
})

local lspconfig = require('lspconfig')

local servers = { 'clangd', 'rust_analyzer' }
local capabilities = require("cmp_nvim_lsp").default_capabilities()
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
  }
end

local luasnip = require('luasnip')
local cmp = require('cmp')
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
    ['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}
