set background=dark

highlight clear

if has("syntax_on")
  syntax reset
endif

let g:colors_name = "Ev"

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
" 234 #1c1c1c Grey11
" 235 #262626 Grey15
" 240 #585858 Grey35
" 244 #808080 Grey50
"
"""""""""""""""""""""""""""""""""""""""""""""""""
" => Base
"""""""""""""""""""""""""""""""""""""""""""""""""
" highlight Normal ctermfg=15 ctermbg=233 guifg=white guibg=grey7
highlight LineNr       ctermfg=240 ctermbg=233 guifg=grey35 guibg=grey7
highlight Comment      ctermfg=8               guifg=grey
highlight Number       ctermfg=141             guifg=mediumpurple1
highlight Float        ctermfg=141             guifg=mediumpurple1
highlight Boolean      ctermfg=63              guifg=royalblue1
highlight Character    ctermfg=15              guifg=white
highlight String       ctermfg=49              guifg=mediumspringgreen
highlight Constant     ctermfg=15 cterm=bold   guifg=white gui=bold
highlight Delimiter    ctermfg=15              guifg=white
highlight Identifier   ctermfg=81              guifg=steelblue1
highlight Define       ctermfg=81              guifg=steelblue1
highlight keyword      ctermfg=81 cterm=bold   guifg=steelblue1 gui=bold
highlight Operator     ctermfg=198             guifg=deeppink1
highlight Function     ctermfg=198             guifg=deeppink1
highlight Conditional  ctermfg=198             guifg=deeppink1
highlight Statement    ctermfg=198             guifg=deeppink1
highlight Repeat       ctermfg=198             guifg=deeppink1
highlight Label        ctermfg=198             guifg=deeppink1
highlight Tag          ctermfg=198             guifg=deeppink1
highlight type         ctermfg=183             guifg=plum2
highlight typedef      ctermfg=183             guifg=plum2
highlight Ignore       ctermfg=244 ctermbg=233 guifg=grey50 guibg=grey7
highlight MatchParen   ctermfg=11  ctermbg=233 guifg=yellow guibg=grey7 cterm=none gui=none
highlight ModeMsg      ctermfg=15              guifg=white
highlight Macro        ctermfg=15              guifg=white
highlight Error        ctermfg=9   ctermbg=233 guifg=red guibg=grey7
highlight ErrorMsg     ctermfg=9   ctermbg=233 guifg=red guibg=grey7
highlight MoreMsg      ctermfg=15              guifg=white
highlight SpecialKey   ctermfg=235             guifg=grey15
highlight SpecialChar  ctermfg=33              guifg=dodgerblue1
highlight PreProc      ctermfg=42              guifg=springgreen2
highlight PreCondit    ctermfg=33              guifg=dodgerblue1
highlight StorageClass ctermfg=33              guifg=dodgerblue1
highlight Special      ctermfg=81              guifg=steelblue1
highlight Search       ctermfg=233 ctermbg=11 cterm=none guifg=yellow guibg=grey25 gui=undercurl
highlight IncSearch    cterm=underline         guifg=yellow gui=undercurl
highlight NonText      ctermfg=240             guifg=grey35
highlight Folded       ctermfg=240 ctermbg=235 guifg=grey35 guibg=grey15
highlight FoldColumn   ctermfg=240 ctermbg=233 guifg=grey35 guibg=grey7
highlight Directory    ctermfg=45              guifg=turquoise2
highlight VertSplit    ctermfg=240 ctermbg=233 guifg=grey9 guibg=grey7
highlight ColorColumn  ctermbg=234                         guibg=grey3
highlight Question     ctermfg=49              guifg=mediumspringgreen
highlight DiffAdd      ctermfg=49  ctermbg=235 guifg=mediumspringgreen guibg=grey15
highlight DiffChange   ctermfg=49  ctermbg=235 guifg=mediumspringgreen guibg=grey15
highlight DiffDelete   ctermfg=198 ctermbg=235 cterm=italic guifg=deeppink1 guibg=grey15 gui=italic
highlight DiffText     ctermfg=49  ctermbg=235 guifg=mediumspringgreen guibg=grey15 guifg=mediumspringgreen
highlight CursorLine   ctermbg=233 cterm=none guibg=grey7 gui=none
highlight CursorColumn ctermbg=233 cterm=none guibg=grey7 gui=none

"""""""""""""""""""""""""""""""""""""""""""""""""
" => netrw
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight netrwSpecial  ctermfg=45              guifg=turquoise2
highlight netrwClassify ctermfg=45              guifg=turquoise2
highlight netrwExe      ctermfg=240             guifg=grey35
highlight netrwTreeBar  ctermfg=240 ctermbg=233 guifg=grey35 guibg=grey7
highlight netrwPlain    ctermfg=51              guifg=cyan1
"""""""""""""""""""""""""""""""""""""""""""""""""
" => jsx
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight xmlTag     ctermfg=198 guifg=deeppink1
highlight xmlTagName ctermfg=198 guifg=deeppink1
highlight xmlEndTag  ctermfg=198 guifg=deeppink1

"""""""""""""""""""""""""""""""""""""""""""""""""
" => javascript
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight jsImport ctermfg=198 guifg=deeppink1
highlight jsExport ctermfg=198 guifg=deeppink1
highlight jsExportDefault ctermfg=198 guifg=deeppink1
highlight jsFrom ctermfg=198 guifg=deeppink1
highlight jsTernaryIfOperator ctermfg=198 guifg=deeppink1
highlight jsModuleAs ctermfg=198 guifg=deeppink1
highlight jsDecorator ctermfg=198 guifg=deeppink1
highlight jsLabel ctermfg=198 guifg=deeppink1
highlight jsSwitchCase ctermfg=198 guifg=deeppink1
highlight jsSwitchColon ctermfg=198 guifg=deeppink1
highlight jsForAwait ctermfg=198 guifg=deeppink1
highlight jsClassMethodType ctermfg=198 guifg=deeppink1

highlight jsDecoratorFunction ctermfg=15 guifg=white
highlight jsModuleAsterisk ctermfg=15 guifg=white
highlight jsArrowFuncArgs ctermfg=15 guifg=white
highlight jsObjectKeyString ctermfg=15 guifg=white
highlight jsObjectStringKey ctermfg=15 guifg=white
highlight jsDestructuringAssignment ctermfg=15 guifg=white
highlight jsDestructuringNoise ctermfg=15 guifg=white
highlight jsFuncParens ctermfg=15 guifg=white

highlight jsNull ctermfg=63 guifg=royalblue1
highlight jsBooleanTrue ctermfg=63 guifg=royalblue1
highlight jsBooleanFalse ctermfg=63 guifg=royalblue1

highlight jsObjectKey ctermfg=194 guifg=honeydew2

highlight jsObjectMethodType ctermfg=11 guifg=yellow
highlight jsClassFuncName ctermfg=11 cterm=italic guifg=yellow gui=italic
highlight jsClassDefinition ctermfg=11 cterm=italic guifg=yellow gui=italic
highlight jsClassProperty ctermfg=11 guifg=yellow
highlight jsFuncName ctermfg=11 cterm=italic guifg=yellow gui=italic

highlight jsObjectFuncName ctermfg=81 cterm=italic guifg=steelblue1 gui=italic
highlight jsThis ctermfg=81 guifg=steelblue1
highlight jsAsyncKeyword ctermfg=81 guifg=steelblue1
highlight jsStorageClass ctermfg=81 guifg=steelblue1
highlight jsPrototype ctermfg=81 guifg=steelblue1
highlight jsBuiltins ctermfg=81 guifg=steelblue1
highlight jsSuper ctermfg=81 guifg=steelblue1
highlight jsBlockLabel ctermfg=81 guifg=steelblue1
highlight jsBlockLabelKey ctermfg=81 guifg=steelblue1
highlight jsFunction ctermfg=81 guifg=steelblue1
highlight jsGlobalObjects ctermfg=81 guifg=steelblue1
highlight jsGlobalNodeObjects ctermfg=81 guifg=steelblue1
highlight jsSpecial ctermfg=81 guifg=steelblue1
highlight jsBlockLabel ctermfg=81 guifg=steelblue1
highlight jsCharacter ctermfg=81 guifg=steelblue1
highlight jsArrowFunction ctermfg=81 guifg=steelblue1

highlight jsNumber ctermfg=141 guifg=mediumpurple1
highlight jsFloat ctermfg=141 guifg=mediumpurple1

highlight jsFuncArgOperator ctermfg=202 guifg=orangered1
highlight jsFuncArgs ctermfg=202 guifg=orangered1

"""""""""""""""""""""""""""""""""""""""""""""""""
" => haskell
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight haskellKeyword ctermfg=198 guifg=deeppink1
highlight haskellImportKeywords ctermfg=198 guifg=deeppink1
highlight haskellDecl ctermfg=198 guifg=deeppink1
highlight haskellDeclKeyword ctermfg=198 guifg=deeppink1
highlight haskellWhere ctermfg=198 guifg=deeppink1
highlight haskellLet ctermfg=198 guifg=deeppink1
highlight haskellParens ctermfg=15 guifg=white

highlight haskellDefault ctermfg=15 guifg=white
highlight haskellBlock ctermfg=15 guifg=white
highlight haskellBrackets ctermfg=15 guifg=white

highlight haskellIdentifier ctermfg=11 guifg=yellow
highlight haskellPragma ctermfg=11 cterm=italic guifg=yellow gui=italic

highlight haskellBottom ctermfg=48 guifg=springgreen1 cterm=underline
highlight hsForeign ctermfg=48 guifg=springgreen1

highlight haskellType ctermfg=81 guifg=steelblue1

au FileType haskell call AdditionalHaskellHighlights()

function! AdditionalHaskellHighlights() 
  syntax    keyword haskellPragmaKey        LANGUAGE OPTIONS_GHC INLINE NOINLINE LINE contained
  syntax    match   haskellPragmaArg        /\<[a-zA-Z_$][0-9a-zA-Z_$]*\>/ contained 
  syntax    region  haskellPragmaDelim      start=+{-#+ end=+#-}+ contains=haskellPragmaKey,haskellPragmaArg

  highlight link    haskellPragmaKey        hsForeign
  highlight link    haskellPragmaArg        haskellPragma
  highlight link    haskellPragmaDelim      haskellBrackets
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""
" => sh.vim
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight shStatement ctermfg=81 guifg=steelblue1
highlight bashStatement ctermfg=81 guifg=steelblue1
highlight shArithmetic ctermfg=141 guifg=mediumpurple1

highlight shEscape ctermfg=15 guifg=white
highlight shCtrlSeq ctermfg=15 guifg=white
highlight shSpecial ctermfg=15 guifg=white
highlight shCaseCommandSub ctermfg=15 guifg=white
highlight shCommandSub ctermfg=15 guifg=white
highlight shDerefSimple ctermfg=15 guifg=white
highlight shDeref ctermfg=15 guifg=white

highlight shExSingleQuote ctermfg=49 guifg=mediumspringgreen
highlight shExDoubleQuote ctermfg=49 guifg=mediumspringgreen

highlight shStatement ctermfg=198 guifg=deeppink1
highlight shExpr ctermfg=198 guifg=deeppink1
highlight shHereDoc ctermfg=198 guifg=deeppink1
highlight shEcho ctermfg=198 guifg=deeppink1
highlight shEchoQuote ctermfg=198 guifg=deeppink1

