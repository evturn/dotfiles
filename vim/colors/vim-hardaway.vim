highlight clear

if has("syntax_on")
  syntax reset
endif

let g:colors_name = "vim-hardaway"

" 8   #808080 Grey
" 11  #ffff00 Yellow
" 15  #ffffff White
" 33  #0087ff DodgerBlue1
" 42  #00d787 SpringGreen2
" 45  #00d7ff Turquoise2
" 48  #00ff87 SpringGreen1
" 49  #00ffaf MediumSpringGreen
" 51  #00ffff Cyan1
" 63  #5f5fff RoyalBlue1
" 81  #5fd7ff SteelBlue1
" 141 #af87ff MediumPurple1
" 183 #d7afff Plum2
" 194 #d7ffd7 Honeydew2
" 198 #ff0087 DeepPink1
" 202 #ff5f00 OrangeRed1
" 233 #121212 Grey7
" 230 #ffffd7 Cornsilk1
" 234 #1c1c1c Grey11
" 235 #262626 Grey15
" 240 #585858 Grey35
" 244 #808080 Grey50
"
"""""""""""""""""""""""""""""""""""""""""""""""""
" => Base
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight Boolean      ctermfg=63              guifg=royalblue1
highlight Character    ctermfg=15              guifg=white
highlight ColorColumn  ctermfg=240 ctermbg=232 guifg=grey35            guibg=grey3
highlight Comment      ctermfg=8               guifg=grey
" Conceal
highlight Conditional  ctermfg=198             guifg=deeppink1
highlight Constant     ctermfg=15              guifg=white
highlight Cursor       ctermfg=49              guifg=mediumspringgreen guibg=steelblue1
highlight CursorIM     ctermfg=49              guifg=mediumspringgreen guibg=steelblue1
highlight CursorColumn ctermbg=233             guibg=grey7             gui=none cterm=none 
highlight CursorLine   ctermbg=233             guibg=grey7             gui=none cterm=none
" Debug
highlight Define       ctermfg=49              guifg=mediumspringgreen
highlight Delimiter    ctermfg=15              guifg=white
highlight DiffAdd      ctermfg=49  ctermbg=235 guifg=mediumspringgreen guibg=grey15
highlight DiffChange   ctermfg=49  ctermbg=235 guifg=mediumspringgreen guibg=grey15
highlight DiffDelete   ctermfg=198 ctermbg=235 guifg=deeppink1         guibg=grey15 gui=italic cterm=italic 
highlight DiffText     ctermfg=49  ctermbg=235 guifg=mediumspringgreen guibg=grey15 
highlight Directory    ctermfg=81              guifg=steelblue1
highlight Error        ctermfg=202 ctermbg=233 guifg=orangered1        guibg=grey7
highlight ErrorMsg     ctermfg=49  ctermbg=233 guifg=mediumspringgreen guibg=grey7
" Exception
highlight Float        ctermfg=141             guifg=mediumpurple1
highlight FoldColumn   ctermfg=240 ctermbg=233 guifg=grey35            guibg=grey7
highlight Folded       ctermfg=240 ctermbg=235 guifg=grey35            guibg=grey15
highlight Function     ctermfg=198             guifg=deeppink1
highlight Identifier   ctermfg=45              guifg=turquoise2
highlight Ignore       ctermfg=244 ctermbg=233 guifg=grey50            guibg=grey7
highlight IncSearch    ctermfg=48              guifg=springgreen1      gui=italic,bold cterm=italic,bold
" Include
highlight Label        ctermfg=198             guifg=deeppink1
highlight LineNr       ctermfg=240             guifg=grey20
highlight Macro        ctermfg=48              guifg=springgreen1
highlight MatchParen   ctermfg=33  ctermbg=233 guifg=dodgerblue1       guibg=grey7
highlight ModeMsg      ctermfg=49  ctermbg=233 guifg=mediumspringgreen guibg=grey7
highlight MoreMsg      ctermfg=49  ctermbg=233 guifg=mediumspringgreen guibg=grey7
highlight NonText      ctermfg=235             guifg=grey15
highlight Normal                                                       guibg=grey7
highlight Number       ctermfg=141             guifg=mediumpurple1
highlight Operator     ctermfg=198             guifg=deeppink1
" PMenu
" PMenuSel
" PMenuSbar
" PMenuThumb
highlight PreCondit    ctermfg=33              guifg=dodgerblue1
highlight PreProc      ctermfg=48              guifg=springgreen1
highlight Question     ctermfg=49              guifg=mediumspringgreen guibg=grey7
highlight Repeat       ctermfg=198             guifg=deeppink1
highlight Search       ctermfg=11  ctermbg=196 guifg=white             guibg=red1 cterm=italic gui=italic
" SignColumn
highlight Special      ctermfg=81              guifg=steelblue1
highlight SpecialChar  ctermfg=48              guifg=springgreen1
" SpecialComment
highlight SpecialKey   ctermfg=235             guifg=grey15
" SpellBad
" SpellLocal
" SpellCap
" SpellRare
highlight StatusLine   ctermfg=235             guifg=grey17
highlight StatusLineNC ctermfg=235             guifg=grey10
highlight Statement    ctermfg=198             guifg=deeppink1
highlight StorageClass ctermfg=48              guifg=springgreen1
highlight String       ctermfg=49              guifg=mediumspringgreen
" Structure
" TabLine
" TabLineFill
" TabLineSel
highlight Tag          ctermfg=198             guifg=deeppink1
" Title
" Todo
highlight VertSplit    ctermfg=240             guifg=grey7             guibg=grey7 cterm=none
" Visual
" VisualNOS
" WarningMsg
" WildMenu
highlight keyword      ctermfg=81              guifg=steelblue1        gui=bold cterm=bold
highlight type         ctermfg=81              guifg=steelblue1
highlight Type         ctermfg=81              guifg=steelblue1
highlight Typedef      ctermfg=81              guifg=steelblue1
highlight typedef      ctermfg=81              guifg=steelblue1
" Underlined

"""""""""""""""""""""""""""""""""""""""""""""""""
" => netrw
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight netrwSpecial  ctermfg=45              guifg=turquoise2
highlight netrwClassify ctermfg=45              guifg=turquoise2
highlight netrwExe      ctermfg=240             guifg=grey35
highlight netrwTreeBar  ctermfg=240 ctermbg=233 guifg=grey35 guibg=grey7
highlight netrwPlain    ctermfg=81              guifg=steelblue1
"""""""""""""""""""""""""""""""""""""""""""""""""
" => jsx
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight xmlTag     ctermfg=198 guifg=deeppink1
highlight xmlTagName ctermfg=198 guifg=deeppink1
highlight xmlEndTag  ctermfg=198 guifg=deeppink1

"""""""""""""""""""""""""""""""""""""""""""""""""
" => sh.vim
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight shStatement      ctermfg=81 guifg=steelblue1
highlight bashStatement    ctermfg=81 guifg=steelblue1
highlight shArithmetic     ctermfg=141 guifg=mediumpurple1

highlight shEscape         ctermfg=15 guifg=white
highlight shCtrlSeq        ctermfg=15 guifg=white
highlight shSpecial        ctermfg=15 guifg=white
highlight shCaseCommandSub ctermfg=15 guifg=white
highlight shCommandSub     ctermfg=15 guifg=white
highlight shDerefSimple    ctermfg=15 guifg=white
highlight shDeref          ctermfg=15 guifg=white

highlight shExSingleQuote  ctermfg=49 guifg=mediumspringgreen
highlight shExDoubleQuote  ctermfg=49 guifg=mediumspringgreen

highlight shStatement      ctermfg=198 guifg=deeppink1
highlight shExpr           ctermfg=198 guifg=deeppink1
highlight shHereDoc        ctermfg=198 guifg=deeppink1
highlight shEcho           ctermfg=198 guifg=deeppink1
highlight shEchoQuote      ctermfg=198 guifg=deeppink1

"""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight NERDTreeCWD             ctermfg=49  guifg=MediumSpringGreen cterm=italic gui=italic
highlight NERDTREEDir             ctermfg=49  guifg=MediumSpringGreen cterm=italic gui=italic
highlight NERDTreeFile            ctermfg=81  guifg=steelblue1 
highlight NERDTreeClosable        ctermfg=11  guifg=yellow
highlight NERDTreeOpenable        ctermfg=81  guifg=steelblue1
highlight NERDTreeDirSlash        ctermfg=81  guifg=steelblue1
highlight NERDTreeHelp            ctermfg=48  guifg=springgreen1
highlight NERDTreeHelpKey         ctermfg=198 guifg=deeppink1
highlight NERDTreeHelpTitle       ctermfg=81  guifg=steelblue1        cterm=italic gui=italic

set background=dark
