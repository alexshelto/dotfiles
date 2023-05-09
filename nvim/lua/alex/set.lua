local options = {

  nu = true,
  numberwidth = 3,
  relativenumber = true,

  tabstop = 4,
  softtabstop = 4,
  shiftwidth = 4,
  expandtab = true,

  smartindent = true,

  wrap = false,

  swapfile = false,
  backup = false,
  undodir = os.getenv("HOME") .."/.vim/undodir",
  undofile = true,

  showtabline = 2,

  -- Search
  incsearch = true,
  ignorecase = true, -- ignore case when searching
  smartcase = true,  -- case insensitive unless capitals used in search
  hlsearch = false,


  -- Display
  signcolumn = 'yes', -- Shows the sign column
  colorcolumn = '80',
  scrolloff = 8, -- always show 8 rows from edge of screen
  splitright = true,
  showcmd = true,

  updatetime = 50, -- faster completion
}


-- Creating the neovim option commmands from the table above
for k, v in pairs(options) do
  vim.opt[k] = v
end

