"            _
"     _   __(_____ ___  __________
"    | | / / / __ `__ \/ ___/ ___/
"   _| |/ / / / / / / / /  / /__
"  (_|___/_/_/ /_/ /_/_/   \___/
"

set nocompatible
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

set guifont=Operator\ Mono\ Bold\ Mono
set shiftwidth=2
set tabstop=2
set shortmess=atI
set title
set showcmd
set ttyfast
set term=screen-256color
set t_ut=
set timeoutlen=50


let g:auto_type_info=0
let $PATH .= (":" . $HOME . "/.cabal/bin")

colorscheme elflord

try
  source ~/.vim_runtime/my_configs.vim
catch
endtry
