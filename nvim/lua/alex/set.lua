local options = {
  fileencoding = 'utf-8',
  showtabline = 2,

  -- Display
  guicursor="",
  wrap = false,   -- Displays lines as one long line 
  signcolumn = 'yes', -- Shows the sign column
  colorcolumn = '80',
  scrolloff = 8, -- always show 8 rows from edge of screen 
  splitright = true,                       -- force all vertical splits to go to the right of current window
  completeopt = { "menu", "menuone", "noselect" },

  -- Sidebar
  number = true,
  numberwidth = 3,
  showcmd = true,

  -- Search
  incsearch = true,
  ignorecase = true, -- ignore cas when searching 
  smartcase = true,  -- case insensitive unless capitals used in search 
  hlsearch = false,

  -- White Chars
  smartindent = true,
  expandtab = true,
  shiftwidth = 4,
  softtabstop = 4,
  tabstop = 4,

  undofile = true, -- enable persistant undo 
  updatetime = 300, -- faster completion 
  backup = false,
}

vim.opt.shortmess:append "c"

-- Creating the neovim option commmands from the table above 
for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.g.mapleader = " "
