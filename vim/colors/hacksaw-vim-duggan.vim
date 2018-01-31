" Name:         Hacksaw Vim Duggan
" Description:  Template for Hacksaw Vim Duggan colorscheme
" Author:       ev <ev@evturn.com>
" Maintainer:   ev <ev@evturn.com>
" License:      Public domain
" Last Updated: Wed Jan 31 15:19:02 2018

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Hacksaw Vim Duggan] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'hacksaw-vim-duggan'

" Color similarity table (dark background)
" mediumspringgreen: GUI=#00ffaf/rgb(  0,255,175)  Term= 49 #00ffaf/rgb(  0,255,175)  [delta=0.000000]
"        orangered1: GUI=#ff5f00/rgb(255, 95,  0)  Term=202 #ff5f00/rgb(255, 95,  0)  [delta=0.000000]
"              red1: GUI=#ff0000/rgb(255,  0,  0)  Term=196 #ff0000/rgb(255,  0,  0)  [delta=0.000000]
"      springgreen1: GUI=#00ff87/rgb(  0,255,135)  Term= 48 #00ff87/rgb(  0,255,135)  [delta=0.000000]
"      springgreen2: GUI=#00d787/rgb(  0,215,135)  Term= 42 #00d787/rgb(  0,215,135)  [delta=0.000000]
"         deeppink1: GUI=#ff0087/rgb(255,  0,135)  Term=198 #ff0087/rgb(255,  0,135)  [delta=0.000000]
"             grey3: GUI=#080808/rgb(  8,  8,  8)  Term=232 #080808/rgb(  8,  8,  8)  [delta=0.000000]
"             grey7: GUI=#121212/rgb( 18, 18, 18)  Term=233 #121212/rgb( 18, 18, 18)  [delta=0.000000]
"            grey10: GUI=#1c1c1c/rgb( 28, 28, 28)  Term=234 #1c1c1c/rgb( 28, 28, 28)  [delta=0.000000]
"            grey15: GUI=#262626/rgb( 38, 38, 38)  Term=235 #262626/rgb( 38, 38, 38)  [delta=0.000000]
"            grey20: GUI=#303030/rgb( 48, 48, 48)  Term=236 #303030/rgb( 48, 48, 48)  [delta=0.000000]
"            grey35: GUI=#585858/rgb( 88, 88, 88)  Term=240 #585858/rgb( 88, 88, 88)  [delta=0.000000]
"            grey50: GUI=#808080/rgb(128,128,128)  Term=244 #808080/rgb(128,128,128)  [delta=0.000000]
"        steelblue1: GUI=#5fd7ff/rgb( 95,215,255)  Term= 81 #5fd7ff/rgb( 95,215,255)  [delta=0.000000]
"        turquoise2: GUI=#00d7ff/rgb(  0,215,255)  Term= 45 #00d7ff/rgb(  0,215,255)  [delta=0.000000]
"     mediumpurple1: GUI=#af87ff/rgb(175,135,255)  Term=141 #af87ff/rgb(175,135,255)  [delta=0.000000]
"        royalblue1: GUI=#5f5fff/rgb( 95, 95,255)  Term= 63 #5f5fff/rgb( 95, 95,255)  [delta=0.000000]
"       dodgerblue1: GUI=#0087ff/rgb(  0,135,255)  Term= 33 #0087ff/rgb(  0,135,255)  [delta=0.000000]
"            yellow: GUI=#ffff00/rgb(255,255,  0)  Term= 11                           [delta=nan]
"             white: GUI=#ffffff/rgb(255,255,255)  Term= 15                           [delta=nan]
"              grey: GUI=#808080/rgb(128,128,128)  Term=  8                           [delta=nan]
hi Boolean ctermfg=63 ctermbg=233 guifg=#5f5fff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=15 ctermbg=233 guifg=#ffffff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=240 ctermbg=232 guifg=#585858 guibg=#080808 guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=8 ctermbg=233 guifg=#808080 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Conditional ctermfg=198 ctermbg=233 guifg=#ff0087 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=15 ctermbg=233 guifg=#ffffff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=49 ctermbg=81 guifg=#00ffaf guibg=#5fd7ff guisp=NONE cterm=NONE gui=NONE
hi CursorIM ctermfg=49 ctermbg=81 guifg=#00ffaf guibg=#5fd7ff guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=233 ctermbg=233 guifg=#121212 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=49 ctermbg=233 guifg=#00ffaf guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=15 ctermbg=233 guifg=#ffffff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=49 ctermbg=235 guifg=#00ffaf guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=49 ctermbg=235 guifg=#00ffaf guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=198 ctermbg=235 guifg=#ff0087 guibg=#262626 guisp=NONE cterm=NONE,italic gui=NONE,italic
hi DiffText ctermfg=49 ctermbg=235 guifg=#00ffaf guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=81 ctermbg=233 guifg=#5fd7ff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=202 ctermbg=233 guifg=#ff5f00 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=49 ctermbg=233 guifg=#00ffaf guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=141 ctermbg=233 guifg=#af87ff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=240 ctermbg=233 guifg=#585858 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=240 ctermbg=235 guifg=#585858 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=198 ctermbg=233 guifg=#ff0087 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=45 ctermbg=233 guifg=#00d7ff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=244 ctermbg=233 guifg=#808080 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=48 ctermbg=233 guifg=#00ff87 guibg=#121212 guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
hi Label ctermfg=198 ctermbg=233 guifg=#ff0087 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=236 ctermbg=233 guifg=#303030 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=48 ctermbg=233 guifg=#00ff87 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=33 ctermbg=233 guifg=#0087ff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=49 ctermbg=233 guifg=#00ffaf guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=49 ctermbg=233 guifg=#00ffaf guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=235 ctermbg=233 guifg=#262626 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=15 ctermbg=233 guifg=#ffffff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=141 ctermbg=233 guifg=#af87ff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=198 ctermbg=233 guifg=#ff0087 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=33 ctermbg=233 guifg=#0087ff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=48 ctermbg=233 guifg=#00ff87 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=49 ctermbg=233 guifg=#00ffaf guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=198 ctermbg=233 guifg=#ff0087 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=15 ctermbg=196 guifg=#ffffff guibg=#ff0000 guisp=NONE cterm=NONE,italic gui=NONE,italic
hi Special ctermfg=81 ctermbg=233 guifg=#5fd7ff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=48 ctermbg=233 guifg=#00ff87 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=235 ctermbg=233 guifg=#262626 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=235 ctermbg=233 guifg=#262626 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=234 ctermbg=233 guifg=#1c1c1c guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=198 ctermbg=233 guifg=#ff0087 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=48 ctermbg=233 guifg=#00ff87 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=49 ctermbg=233 guifg=#00ffaf guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Tag ctermfg=198 ctermbg=233 guifg=#ff0087 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=233 ctermbg=233 guifg=#121212 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=81 ctermbg=233 guifg=#5fd7ff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=81 ctermbg=233 guifg=#5fd7ff guibg=#121212 guisp=NONE cterm=NONE gui=NONE
finish

" Background: dark
" Color: white             #ffffff      15       White
" Color: mediumspringgreen #00ffaf      49       Green
" Color: springgreen1      #00ff87      48       Green
" Color: springgreen2      #00d787      42       Green
" Color: steelblue1        #5fd7ff      81       Blue
" Color: deeppink1         #ff0087      198      Red
" Color: yellow            #ffff00      11       Yellow
" Color: grey              #808080      8        Grey
" Color: grey3             #080808      232      Black
" Color: grey7             #121212      233      Black
" Color: grey10            #1c1c1c      234      Black
" Color: grey15            #262626      235      Black
" Color: grey20            #303030      236      Grey
" Color: grey35            #585858      240      Grey
" Color: grey50            #808080      244      Grey
" Color: royalblue1        #5f5fff      63       Blue
" Color: turquoise2        #00d7ff      45       Blue
" Color: dodgerblue1       #0087ff      33       Blue
" Color: mediumpurple1     #af87ff      141      Blue
" Color: red1              #ff0000      196      Red
" Color: orangered1        #ff5f00      202      Red
" Boolean      royalblue1        grey7
" Character    white             grey7
" ColorColumn  grey35            grey3
" Comment      grey              grey7
" Conditional  deeppink1         grey7
" Constant     white             grey7
" Cursor       mediumspringgreen steelblue1
" CursorIM     mediumspringgreen steelblue1
" CursorColumn grey7             grey7
" Define       mediumspringgreen grey7
" Delimiter    white             grey7
" DiffAdd      mediumspringgreen grey15
" DiffChange   mediumspringgreen grey15
" DiffDelete   deeppink1         grey15    italic
" DiffText     mediumspringgreen grey15 
" Directory    steelblue1        grey7
" Error        orangered1        grey7
" ErrorMsg     mediumspringgreen grey7
" Float        mediumpurple1     grey7
" FoldColumn   grey35            grey7
" Folded       grey35            grey15
" Function     deeppink1         grey7
" Identifier   turquoise2        grey7
" Ignore       grey50            grey7
" IncSearch    springgreen1      grey7     italic,bold
" Label        deeppink1         grey7
" LineNr       grey20            grey7
" Macro        springgreen1      grey7
" MatchParen   dodgerblue1       grey7
" ModeMsg      mediumspringgreen grey7
" MoreMsg      mediumspringgreen grey7
" NonText      grey15            grey7
" Normal       white             grey7
" Number       mediumpurple1     grey7
" Operator     deeppink1         grey7
" PreCondit    dodgerblue1       grey7
" PreProc      springgreen1      grey7
" Question     mediumspringgreen grey7
" Repeat       deeppink1         grey7
" Search       white             red1      italic
" Special      steelblue1        grey7
" SpecialChar  springgreen1      grey7
" SpecialKey   grey15            grey7
" StatusLine   grey15            grey7
" StatusLineNC grey10            grey7
" Statement    deeppink1         grey7
" StorageClass springgreen1      grey7
" String       mediumspringgreen grey7
" Tag          deeppink1         grey7
" VertSplit    grey7             grey7
" Type         steelblue1        grey7
" Typedef      steelblue1        grey7
