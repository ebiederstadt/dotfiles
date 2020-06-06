syntax on

set noerrorbells
set expandtab
set smartindent
set nu
set nowrap
set ignorecase
set smartcase
set noswapfile
set termguicolors
set scrolloff=8
set colorcolumn=80
set encoding=utf-8
set mouse=a
set undofile
set undodir=~/.vim/undodir
set incsearch
set cmdheight=2
set shortmess+=c

" Default indents
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Webdev stuff is 2 space indents
au FileType html setlocal ts=2 sw=2 expandtab
au FileType javascript setlocal ts=2 sw=2 expandtab
au FileType css setlocal ts=2 sw=2 expandtab
au FileType typescript setlocal ts=2 sw=2 expandtab

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'lervag/vimtex'
call plug#end()

" Color scheme
colorscheme gruvbox
set background=dark

" Keymappings
nnoremap <leader>u :UndotreeToggle<CR>

