set nocompatible

syntax on

if has ('autocmd')
  filetype plugin indent on
endif

" SPACES

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set listchars+=tab:··
set listchars+=trail:·
set listchars+=space:·
set listchars+=eol:↴
set listchars+=nbsp:_

set list

" UI CONFIG

set autoindent
set backspace=indent
set backspace+=eol
set backspace+=start
set number
set showcmd
set cursorline
set wildmenu
set showmatch
set colorcolumn=80
autocmd VimResized * if (&columns > 80) | set columns=80 | endif
set wrap
set linebreak
set showbreak=+++

" SEARCHING

set incsearch
set hlsearch
set ignorecase

" FOLDING

set foldenable
set foldlevelstart=10

" BACKUP CONFIG

set backupdir=~/.vim/backup
set backupskip=/tmp/*
set backupskip+=/private/tmp/*
set directory=~/.vim/swaps
set undodir=~/.vim/undos

" AUTOREAD
set autoread
au CursorHold * checktime

" VIM PLUGINS

filetype off
set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()

  Plugin 'vundlevim/vundle.vim'
  Plugin 'editorconfig/editorconfig-vim' 
  Plugin 'scrooloose/nerdtree'
  Plugin 'itchyny/lightline.vim'
  Plugin 'alessandroyorba/despacio'
  Plugin 'alessandroyorba/sierra'
  Plugin 'KeitaNakamura/neodark.vim'
  "Syntax
  Plugin 'shougo/neocomplcache.vim'
  Plugin 'shougo/neosnippet'
  Plugin 'shougo/neosnippet-snippets'
  Plugin 'digitaltoad/vim-pug'
  Plugin 'JulesWang/css.vim'
  Plugin 'wavded/vim-stylus'
  Plugin 'neovimhaskell/haskell-vim'
  Plugin 'elzr/vim-json'
  Plugin 'fatih/vim-go'
  Plugin 'godlygeek/tabular'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'mxw/vim-jsx'
  Plugin 'evanmiller/nginx-vim-syntax'
  Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
  Plugin 'pangloss/vim-javascript'
  Plugin 'cakebaker/scss-syntax.vim'
  Plugin 'othree/html5.vim'
  " Tools
  Plugin 'tpope/vim-surround'
  Plugin 'mattn/emmet-vim'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'tpope/vim-fugitive' 
  Plugin 'tpope/vim-repeat'

call vundle#end()
filetype plugin indent on

" CONFIG COLOR THEME
"set term=screen-256color
set termguicolors
set laststatus=2
syntax enable
"set background=dark
"colorscheme despacio
"colorscheme sierra
colorscheme neodark
let g:lightline = {}
let g:lightline.colorscheme = 'neodark'

"NERD TREE CONFIG
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" NEOCOMPLETE CONFG
" Enable `neocomplcache` by default
" https://github.com/Shougo/neocomplcache.vim#installation
"
let g:neocomplcache_enable_at_startup=1
let g:neocomplete#enable_fuzzy_completion=1

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#force_omni_input_patterns.python =
  \'\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from
  \|^\s*import
  \)\w*'

" GITGUTTER
set updatetime=250
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
