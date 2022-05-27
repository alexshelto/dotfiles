"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Alexander Shelton
" Neovim config. Last edited: April 21st 2021
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" cannot code without the following
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=UTF-8
syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set relativenumber
set cursorline
set nowrap

set nohlsearch
set incsearch
set hidden
set noerrorbells
set scrolloff=8
set signcolumn=yes
set colorcolumn=80

" Give more space for commands at the bottom
set cmdheight=2




" vim-plug start
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.nvim/plugged')

"My Color Scheme
Plug 'morhetz/gruvbox'

"Nerd tree file view
Plug 'scrooloose/nerdtree'

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"lsp 
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

"Auto Complete
Plug 'nvim-lua/completion-nvim'

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug end, add plugins to &runtimepath


let g:gruvbox_contrast_dark = 'hard'



colorscheme gruvbox
set background=dark

"""""" mappings                                                                    
inoremap <Ctrl-[> <esc>                                                            
let mapleader=" "                                                                  
nnoremap <leader>h :wincmd h<CR>                                                   
nnoremap <leader>l :wincmd l<CR>                                                   
nnoremap <silent> <Leader>+ :vertical resize +5<CR>                                
nnoremap <silent> <Leader>- :vertical resize -5<CR>

map <C-t> :NERDTreeToggle<CR>


" Project based search of word
nnoremap <leader>f: lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>


set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']


"lua require'nvim_lsp'.clangd.setup{}


