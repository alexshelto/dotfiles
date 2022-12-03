local Remap = require("alex.keymap")

local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

vim.g.mapleader = " "

-- Navigate split panes
nnoremap('<leader>h', '<c-w>h')
nnoremap('<leader>l', '<c-w>l')

-- Adjusting pane width
nnoremap('<leader>+', ':vertical resize +5<CR>')

-- Ctrl-s and Space-s to save
nnoremap('<leader>s', ':w<CR>')
inoremap('<c-s>', '<ESC>:w<CR>a')

-- Ctrl-c to exit insert mode 
inoremap('<c-c>', '<ESC>')

nnoremap('<leader>w', ":lua require('telescope.builtin').find_files()<CR>")
nnoremap('<leader>f',":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep for > ') })<CR>")



