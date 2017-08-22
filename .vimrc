"            _
"     _   __(_____ ___  __________
"    | | / / / __ `__ \/ ___/ ___/
"   _| |/ / / / / / / / /  / /__
"  (_|___/_/_/ /_/ /_/_/   \___/
"

set nocompatible                        " Make Vim more useful

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
"""""""""""""""""""""""""""""""""
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'wakatime/vim-wakatime'
call vundle#end()
"""""""""""""""""""""""""""""""""
filetype plugin on

set autoindent
set clipboard=unnamed                   " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set wildmenu                            " Enhance command-line completion
set esckeys                             " Allow cursor keys in insert mode
set backspace=indent,eol,start          " Allow backspace in insert mode
set ttyfast                             " Optimize for fast terminal connections
set gdefault                            " Add the g flag to search/replace by default
set encoding=utf-8 nobomb               " Use UTF-8 without BOM
let mapleader=","                       " Change mapleader
set noeol

if exists("&undodir")
  set undodir=~/.vim/undo
endif

set backupskip=/tmp/*,/private/tmp/*    " Don’t create backups when editing files in certain directories
set exrc                                " Enable per-directory .vimrc files and disable unsafe commands in them
set secure
set number                              " Enable line numbers
syntax on                               " Enable syntax highlighting
set background=dark
set guifont=Operator\ Mono\ Bold\ Mono
set tabstop=2                           " Make tabs as wide as two spaces
set softtabstop=2                       " Make tabs as wide as two spaces when editing
set expandtab                           " Make tabs become spaces

set lcs=tab:▸\ ,trail:·,nbsp:_          " Show “invisible” characters
set list

set hlsearch                            " Highlight searches
set ignorecase                          " Ignore case of searches
set incsearch                           " Highlight dynamically as pattern is typed
set laststatus=2                        " Always show status line
set mouse=a                             " Enable mouse in all modes
set noerrorbells                        " Disable error bells
set visualbell t_vb=                    " turn off error beep/flash
set belloff=all
set novisualbell                        " turn off visual bell
set nostartofline                       " Don’t reset cursor to start of line when moving around.
set shortmess=atI                       " Don’t show the intro message when starting Vim
set showmode                            " Show the current mode
set title                               " Show the filename in the window titlebar
set showcmd                             " Show the (partial) command as it’s being typed
set scrolloff=7                         " Start scrolling three lines before the horizontal window border
let g:auto_type_info=0
autocmd! GUIEnter * set vb t_vb=

" Strip trailing whitespace (,ss)
function! StripWhitespace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction


let $PATH .= (":" . $HOME . "/.cabal/bin") " PATH for cabal (Haskell)

noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " Treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

execute pathogen#infect()
