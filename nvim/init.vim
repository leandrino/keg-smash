" PLUG
call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'dracula/vim'

call plug#end()

set nocompatible
syntax on 

" INDENT
"set noexpandtab
"set copyindent
"set preserveindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab "replate tab to space

" WHITESPACES
set listchars+=tab:▸\ 
set listchars+=trail:·
"set listchars+=space:·"Hidden space character
set listchars+=eol:↴
set listchars+=nbsp:_
set list

" UI CONFIG
set colorcolumn=80
set cursorline
set relativenumber
set noshowmode
set background=dark
colorscheme dracula 

" SEARCHING
set incsearch
set hlsearch
set ignorecase

" LIGHTLINE
set laststatus=2
let g:lightline = {}
let g:lightline.colorscheme = 'Dracula'

" TRUE COLOR
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
