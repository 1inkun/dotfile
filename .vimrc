call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'ayu-theme/ayu-vim'

call plug#end()

set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

syntax on
set nocompatible
set encoding=utf-8
set t_Co=256
set tabstop=4

set shiftwidth=4
set wrap
set number
set relativenumber

set noerrorbells
