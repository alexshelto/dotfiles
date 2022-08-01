-- Keybindings 
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end


function imap(shortcut, command)
  map('i', shortcut, command)
end


vim.g.mapleader = " "

-- Navigate split panes
nmap('<leader>h', '<c-w>h')
nmap('<leader>l', '<c-w>l')

-- Adjusting pane width
nmap('<leader>+', ':vertical resize +5<CR>')

-- Ctrl-s and Space-s to save
nmap('<leader>s', ':w<CR>')
imap('<c-s>', '<ESC>:w<CR>a')

-- Ctrl-c to exit insert mode 
imap('<c-c>', '<ESC>')

nmap('<leader>w', ":lua require('telescope.builtin').find_files()<CR>")
nmap('<leader>f',":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep for > ') })<CR>")
