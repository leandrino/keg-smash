" PLUG
set termguicolors

call plug#begin('~/.local/share/nvim/plugged')

  Plug 'itchyny/lightline.vim'
  Plug 'morhetz/gruvbox'
  Plug 'arcticicestudio/nord-vim'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'wakatime/vim-wakatime'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-commentary'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'w0rp/ale'

" LANGUAGES
  Plug 'ElmCast/elm-vim'
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
set number
set noshowmode
" set background=dark
set background=light
" colorscheme nord
colorscheme PaperColor
" colorscheme gruvbox
" let g:gruvbox_contrast_dark='soft' "hard, medium or soft
" let g:gruvbox_contrast_light = 'hard' "hard, medium or soft

" SEARCHING
set incsearch
set hlsearch
set ignorecase

" LIGHTLINE
set laststatus=2
let g:lightline = {}
" let g:lightline.colorscheme = 'nord'
let g:lightline.colorscheme = 'PaperColor'
" let g:lightline.colorscheme = 'gruvbox'

" FOLDING METHOD
set foldmethod=manual

" SYNTAX
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" LINT
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1

" CLIPBOARD
:set clipboard=unnamedplus
