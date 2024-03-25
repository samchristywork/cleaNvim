vim.cmd('colorscheme tokyonight-night')
vim.g.tagbar_show_tag_linenumbers = 2 -- Show line numbers in tagbar
vim.g.tagbar_sort = 0                 -- Sort tagbar by tag name
vim.opt.autoread = true               -- Reload file if it changes on disk
vim.opt.clipboard = 'unnamedplus'     -- Use system clipboard
vim.opt.confirm = true                -- Ask for confirmation when unsaved changes are abandoned
vim.opt.cursorline = true             -- Highlight the current line
vim.opt.expandtab = true              -- Expand TABs to spaces.
vim.opt.hlsearch = true               -- Highlight search results
vim.opt.incsearch = true              -- Show search results as you type
vim.opt.joinspaces = false            -- Don't adjoin two sentences with two space characters as is default.
vim.opt.list = true                   -- Show whitespace characters
vim.opt.listchars = "tab:<=>,trail:-" -- Show tabs as "<=>", and trailing whitespace as "-"
vim.opt.mouse = "a"                   -- Enable mouse support
vim.opt.number = true                 -- Show line numbers
vim.opt.scrolloff = 5                 -- Number of lines to keep above and below cursor
vim.opt.shiftwidth = 2                -- Indents will have a width of 2.
vim.opt.showmatch = true              -- Show matching brackets.
vim.opt.smartcase = true              -- Don't ignore case if search term contains uppercase characters
vim.opt.smartcase = true              -- Don't ignore case if search term contains uppercase characters
vim.opt.smarttab = true               -- Insert spaces when tab is pressed
vim.opt.softtabstop = 2               -- Sets the number of columns for a TAB.
vim.opt.tabstop = 2                   -- The width of a TAB is set to 2.
vim.opt.termguicolors = true          -- Use 24-bit RGB colors
vim.opt.title = true                  -- Set window title to filename
vim.opt.wrap = false                  -- Don't wrap lines
vim.wo.signcolumn = 'yes'             -- Always show sign column
