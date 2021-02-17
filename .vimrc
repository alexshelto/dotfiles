"""""""""""""""""""""""""""""""""""""""""""""
"
"
""""""""""""""""""""""""""""""""""""""""""""""


""""" Behavior
set noerrorbells

set undodir=~/.vim/undodir


""""" Formatting
set tabstop=2 shiftwidth=2 expandtab

""""" Visual
syntax on
set smartindent


set completeopt=menuone,noinsert,noselect
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"" set relativenumber
set nu
set scrolloff=8 
set nowrap
set smartcase
set noswapfile 
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


""""" Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'lyuts/vim-rtags' "CPP 
Plug 'scrooloose/nerdtree'

call plug#end()


""""" Setting color schemes
colorscheme gruvbox
set background=dark
highlight Normal guibg=none

"""""" mappings
inoremap <Ctrl-[> <esc>
let mapleader=" "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

nnoremap <C-t> :NERDTreeToggle<CR>

