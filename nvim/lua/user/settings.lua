local options = {
  fileencoding = 'utf-8',
  showtabline = 2,

  -- Display
  wrap = false,   -- Displays lines as one long line 
  signcolumn = 'yes', -- Shows the sign column
  colorcolumn = '80',
  scrolloff = 8, -- always show 8 rows from edge of screen 
  splitright = true,                       -- force all vertical splits to go to the right of current window
  completeopt = { "menu", "menuone", "noselect" },
  -- completeopt = { "menuone", "noselect" }, -- mostly just for cmp

  -- Sidebar
  number = true,
  numberwidth = 3,
  signcolumn = 'yes',
  showcmd = true,

  -- Search
  incsearch = true,
  ignorecase = true, -- ignore cas when searching 
  smartcase = true,  -- case insensitive unless capitals used in search 

  -- White Chars
  smartindent = true,
  expandtab = true,
  shiftwidth = 2,
  softtabstop = 2,
  tabstop = 2,

  undofile = true, -- enable persistant undo 
  updatetime = 300, -- faster completion 
  backup = false,
}

vim.opt.shortmess:append "c"

-- Creating the neovim option commmands from the table above 
for k, v in pairs(options) do
  vim.opt[k] = v
end
