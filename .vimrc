" vim: fdm=marker
"            _
"     _   __(_____ ___  __________
"    | | / / / __ `__ \/ ___/ ___/
"   _| |/ / / / / / / / /  / /__
"  (_|___/_/_/ /_/ /_/_/   \___/
"
"  Vim is sponsored by Diet Coke®
"

" Options {{{

set nocompatible
set runtimepath+=~/.vim,/usr/local/opt/fzf
set directory^=~/.vim/tmp//

execute pathogen#infect()
syntax on
filetype plugin indent on
syntax sync minlines=256

colorscheme vimhardaway

set autochdir
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard=unnamed
set cmdheight=2
set completeopt+=longest
set completeopt=menuone,menu,longest
set expandtab
set fillchars+=vert:\ 
set formatoptions-=cro
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
set incsearch
set laststatus=2
set lazyredraw
set list
set listchars=trail:·,space:·
set mouse=a
set noshowmode
set nowrap
set nrformats=
set number
set scrolloff=10
set shiftwidth=2
set shortmess=I
set showcmd
set showmatch
set sidescroll=1
set sidescrolloff=15
set smartcase
set smartindent
set smarttab
set splitbelow
set splitright
set synmaxcol=128
set tabstop=2
set textwidth=0
set title
set ttimeoutlen=50
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git/,.cabal-sandbox
set wildmenu
set wildmode=longest,list,full
set wrapmargin=0

if has('nvim')
  set termguicolors
endif

if !has('gui_running')
  set t_Co=256
endif

if !exists('g:gui_oni')
  autocmd VimEnter * NERDTree
  autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  autocmd WinEnter * if (winnr("$") == 1 && expand('%') == '') | q | endif
endif


" }}}

" Auto commands {{{

" Check for changes to a buffer on focus/enter
autocmd CursorHold,CursorHoldI * checktime
autocmd FocusGained,BufEnter * :checktime

" Automatically reload vimrc when it's saved
autocmd! BufWritePost vimrc so ~/.vimrc"

autocmd BufNewFile,BufRead,BufReadPost *.css set syntax=postcss
autocmd BufNewFile,BufRead,BufReadPost *.ghci,.ghci.conf set filetype=haskell
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" Disable automatic new line comment insertion
autocmd FileType * setlocal formatoptions-=cro

" Reset cursor to terminal settings
autocmd VimLeave * set guicursor=a:ver25-Cursor/lCursor

" }}}

" Map commands {{{

" Current mode sets cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

let mapleader=','
let maplocalleader=' '
noremap \ ,

" Line motion on display lines
nnoremap k gk
noremap gk k
nnoremap j gj
nnoremap gj j

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-x> <C-w>x

nnoremap <CR> :noh<CR><CR>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
nnoremap gf :vertical wincmd f<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
map <C-n> :NERDTreeToggle<CR>

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>
vmap a, :Tabularize /<-<CR>
vmap al :Tabularize /[\[\\|,]<CR>

" }}}

" Plugin options {{{

" 🔌  Airline
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_inactive_collapse = 1
let g:airline#extensions#tabline#fnamemod = ':p:.'
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline_section_b = airline#section#create([' %3l:%-3c ⚡︎ %L '])
let g:airline_section_c = airline#section#create(['%t %m'])
let g:airline_section_x = expand('%:p:~:h')
let g:airline_section_y = '%{airline#util#wrap(airline#extensions#branch#get_head(),0)}'
let g:airline_section_z = airline#section#create(['filetype'])

" 🔌  NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '^\.git$']
let NERDTreeStatusline=''
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable = '→'
let g:NERDTreeDirArrowCollapsible = '●'

function! CursorChange()
  if &filetype == 'nerdtree'
    highlight CursorLine ctermfg=0 ctermbg=81 guifg=black guibg=steelblue1
  endif
endfunction

autocmd vimenter,bufenter * call CursorChange()

" 🔌  Haskell
let g:haskell_enable_arrowsyntax      = 1 " highlight `proc`
let g:haskell_enable_pattern_synonyms = 1 " highlight `pattern`
let g:haskell_enable_quantification   = 1 " highlight `forall`
let g:haskell_enable_static_pointers  = 1 " highlight `static`
let g:haskell_enable_typeroles        = 1 " highlight type roles
let g:haskell_backpack                = 0
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_before_where     = 2
let g:haskell_indent_case             = 2
let g:haskell_indent_do               = 2
let g:haskell_indent_guard            = 4
let g:haskell_indent_if               = 0
let g:haskell_indent_in               = 1
let g:haskell_indent_let              = 4
let g:haskell_indent_where            = 6
let g:hs_highlight_boolean = 1
let g:hs_highlight_types = 1
let g:hs_highlight_more_types = 1

" 🔌  Python
let g:python_highlight_all = 1

" 🔌  SuperTab
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

" 🔌  netrw
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_dirhistmax = 0
let g:netrw_fastbrowse = 0
let g:netrw_list_hide='.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,^\.git/$,^\./$'
let g:netrw_liststyle = 0
let g:netrw_preview = 1
let g:netrw_use_errorwindow = 0

" 🔌  Misc
let g:haskell_tabular                      = 1
let g:colorizer_auto_color                 = 0
let g:colorizer_colornames                 = 1
let g:haskellmode_completion_ghc           = 1
let g:jsx_ext_required                     = 0
let g:highlightedyank_highlight_duration   = -1
hi HighlightedyankRegion ctermfg=0 ctermbg=14 guifg=black guibg=aqua

" }}}
