set nocompatible 			            " be iMproved, required

syntax on 				                " Enable syntax highlighting

if has('autocmd')
  filetype plugin indent on
endif

set autoindent				            " Copy indent to the new line

set backspace=indent
set backspace+=eol
set backspace+=start

set backupdir=~/.vim/backup 		  " Set directory for backup files

set backupskip=/tmp/*			        " ┐ Don't create backups
set backupskip+=/private/tmp/*		" ┘ for certain files

set clipboard=unnamed

if has('unnamedplus')
  set clipboard+=unnamedplus
endif

set cpoptions+=$		            	" When making a change, don't
					                        " redisplay the line, and instead,
					                        " put a '$' sign at the end of
					                        " the changed text

set colorcolumn=80			          " highlight certain column(s)
set cursorline				            " highlight the current line
set directory=~/.vim/swaps		    " Set directory for swap files
set encoding=utf-8 nobomb 		    " Use UTF-8 without BOM
set history=5000			            " Increase command line history
set hlsearch				              " Enable search hightlighting
set ignorecase				            " Ignore case in search patterns

set incsearch				              " Highlight search pattern as
					                        " it is being typed

set laststatus=2			            " Always show the status line

set lazyredraw				            " Do not redraw the screen while
					                        " executing macros, registers
					                        " and other commands that have
					                        " not been typed

set listchars=tab:▸\	        		" ┐
set listchars+=trail:·         		" │ Use custom symbols to
set listchars+=eol:↴          		" │ represent invisible characters
set listchars+=nbsp:_          		" ┘

set magic				                  " Enable extended regexp
set mousehide				              " Hide mouse pointer while typing
set noerrorbells			            " Disable error bells

set nojoinspaces			            " When using the join command,
				            	            " only insert a single space
					                        " after a '.', '?', or '!'

set nostartofline			            " Kept the cursos on the same column
set number	    			            " Show line number

set numberwidth=5			            " Increase the minimal number of
            					            " columns used for the line number

set report=0 				              " Report the number of lines changed
set ruler				                  " Show cursor position

set scrolloff=5				            " When scrolling, keep the cursor
					                        " 5 lines below th top and 5 lines
					                        " above the bottom of the screen

set shortmess=aAItW			          " Avoid all th hit-enter prompts
set showcmd				                " Show the command being typed
set showmode				              " Show current mode
set spelllang=en_us			          " Set the spellchecking language

set smartcase 				            " Override 'ignorecase' option
					                        " if the search pattern contains
					                        " uppercase charcters

set synmaxcol=2500			          " Limit syntas higlighting (this
					                        " avoids the very slow redrawing
					                        " when files contain long lines)

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set ttyfast                       " Enable fast terminal connection
set undodir=~/.vim/undos          " Set directory for undo files
set undofile                      " Automatically save undo history
"set virtualedit=all              " Allow cursor to be anywhere

set visualbell                    " ┐
set noerrorbells                  " │ Disable beeping and window flashing
set t_vb=                         " ┘ https://vim.wikia.com/wiki/Disable_beeping

set wildmenu                      " Enable enhanced command-line
                                  " completion (by hitting <TAB> in
                                  " command mode, Vim will show the
                                  " possible matches just above the
                                  " command line with the first
                                  " match highlighted)

set winminheight=0                " Allow windows to be squashed

" ---------------------------------------------------------------

" Vundle Plugins

" ---------------------------------------------------------------
filetype off 				              " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

  " Set required plugin
  Plugin 'VundleVim/Vundle.vim'
  
  " Themes
  Plugin 'dracula/vim'

  " Surround and Emmet Vim
  Plugin 'tpope/vim-surround'
  Plugin 'mattn/emmet-vim'

  " Tools
  Bundle 'wakatime/vim-wakatime'
  Plugin 'editorconfig/editorconfig-vim' 

call vundle#end()                 " required
filetype plugin indent on         " required

