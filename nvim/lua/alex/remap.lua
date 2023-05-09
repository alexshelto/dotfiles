vim.g.mapleader = " "

-- Navigate split panes 
vim.keymap.set('n', '<leader>h', '<c-w>h')
vim.keymap.set('n', '<leader>l', '<c-w>l')

vim.keymap.set('n', '<leader>+', ':vertical resize +5<CR>')

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

