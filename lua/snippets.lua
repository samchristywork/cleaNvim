vim.keymap.set('v', '<leader>s', function ()
  local snippet_name = vim.fn.input('Snippet name: ')
  vim.api.nvim_feedkeys(":!snip " .. '"' .. snippet_name .. '"', 'v', true)
end, {})

vim.keymap.set('n', '<leader>r', function ()
  local builtins = require('telescope.builtin')
  local state = require('telescope.actions.state')
  local actions = require('telescope.actions')
  builtins.find_files({
    cwd = '/home/sam/snippets/',
    attach_mappings = function(_, map)
      map('i', '<CR>', function(prompt_bufnr)
        local content = state.get_selected_entry(prompt_bufnr)
        actions.close(prompt_bufnr)
        vim.api.nvim_feedkeys(':r ' .. content.path, 'n', true)
      end)
      return true
    end,
  })
end, {})
