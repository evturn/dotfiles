"            _
"     _   __(_____ ___  __________
"    | | / / / __ `__ \/ ___/ ___/
"   _| |/ / / / / / / / /  / /__
"  (_|___/_/_/ /_/ /_/_/   \___/
"

set nocompatible
set runtimepath+=~/.vim

colorscheme elflord

filetype plugin on
filetype indent on

""""""""""""""""""""""""""""""
" => syntax
""""""""""""""""""""""""""""""
if !exists("g:syntax_on")
  syntax enable
endif

syntax sync minlines=256

""""""""""""""""""""""""""""""
" => configs
""""""""""""""""""""""""""""""
set guifont=Operator\ Mono\ Bold\
set synmaxcol=128
set ttyfast
set lazyredraw
set shiftwidth=2
set tabstop=2
set cmdheight=2
set foldcolumn=1
set expandtab
set noerrorbells
set novisualbell
set t_vb=

""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
let s:runtime = expand('<sfile>:p:h')."/.vim"
call pathogen#infect()
call pathogen#helptags()

""""""""""""""""""""""""""""""
" => haskell-vim
""""""""""""""""""""""""""""""
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

let g:haskell_indent_case=2
let g:haskell_indent_do=3
let g:haskell_indent_guard=2
let g:haskell_indent_if=3
let g:haskell_indent_in=1
let g:haskell_indent_let=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }
