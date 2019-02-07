" PLUG
  call plug#begin('~/.local/share/nvim/plugged')

  Plug 'itchyny/lightline.vim'
  Plug 'rakr/vim-one'
  Plug 'morhetz/gruvbox'
  Plug 'dracula/vim'
  Plug 'wakatime/vim-wakatime'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-commentary'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-fugitive'
  Plug 'mhinz/vim-signify'
  Plug 'w0rp/ale'

" Syntax
  Plug 'ElmCast/elm-vim'
  Plug 'Valloric/YouCompleteMe'
  Plug 'leafgarland/typescript-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

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
set expandtab " replace tab to space

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
colorscheme gruvbox

" SEARCHING
set incsearch
set hlsearch
set ignorecase

" LIGHTLINE
set laststatus=2
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" FOLDING METHOD
set foldmethod=manual

" SYNTAX
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" YCM
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}

" LINT
let g:ale_fixers = {
\   'javascript': ['semistandard'],
\}

" TRUECOLOR
set termguicolors
