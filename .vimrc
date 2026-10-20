call plug#begin()

" List your plugins here
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'npm ci' }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'plasticboy/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'ayu-theme/ayu-vim'

call plug#end()

set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

set nocompatible
set showmode
set encoding=utf-8

set tabstop=4
set softtabstop=4

set number
set relativenumber
set wrap
syntax on

set smartcase
set noerrorbells

" coc-setting
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-go', 'coc-clangd']
" Show coc.nvim status, including extension installation progress
set statusline^=%{coc#status()}

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Trigger completion with Tab and navigate the completion menu
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Diagnostics and code navigation
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
