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
" 233 #121212 Grey7
" 235 #262626 Grey15
" 240 #585858 Grey35
"
"""""""""""""""""""""""""""""""""""""""""""""""""
" => Base
"""""""""""""""""""""""""""""""""""""""""""""""""
" highlight Normal ctermfg=15 ctermbg=233 guifg=#ffffff guibg=#262626
highlight LineNr ctermfg=240 ctermbg=233 guifg=#585858 guibg=#262626
highlight Comment ctermfg=8 guifg=#808080
highlight Number ctermfg=141 guifg=#af87ff
highlight Float ctermfg=141  guifg=#af87ff
highlight Boolean ctermfg=63 guifg=#5f5fff
highlight Character ctermfg=15 guifg=#ffffff
highlight String ctermfg=49 guifg=#00ffaf
highlight Constant ctermfg=15 cterm=bold guifg=#ffffff
highlight Delimiter ctermfg=15 guifg=#ffffff
highlight Identifier ctermfg=81 guifg=#5fd7ff
highlight Define ctermfg=81 guifg=#5fd7ff
highlight keyword ctermfg=81 cterm=bold guifg=#5fd7ff
highlight Operator ctermfg=198 guifg=#ff0087
highlight Function ctermfg=198  guifg=#ff0087
highlight Conditional ctermfg=198 guifg=#ff0087
highlight Statement ctermfg=198 guifg=#ff0087
highlight Repeat ctermfg=198 guifg=#ff0087
highlight Label ctermfg=198 guifg=#ff0087
highlight Tag ctermfg=198 guifg=#ff0087
highlight type ctermfg=183 guifg=#d7afff
highlight typedef ctermfg=183 guifg=#d7afff
highlight Ignore ctermfg=244 ctermbg=233
highlight MatchParen ctermfg=11 ctermbg=233 cterm=none
highlight ModeMsg ctermfg=15 guifg=#ffffff
highlight Macro ctermfg=15 guifg=#ffffff
highlight Error ctermfg=9 ctermbg=233
highlight ErrorMsg ctermfg=9 ctermbg=233
highlight MoreMsg ctermfg=15 guifg=#ffffff
highlight SpecialKey ctermfg=235
highlight SpecialChar ctermfg=33
highlight PreProc ctermfg=42
highlight PreCondit ctermfg=33
highlight StorageClass ctermfg=33
highlight Special ctermfg=81
highlight Search ctermbg=11 ctermfg=233 cterm=none guibg=#ffff00
highlight IncSearch cterm=underline
highlight NonText ctermfg=240
highlight Folded ctermfg=240 ctermbg=235
highlight FoldColumn ctermfg=240 ctermbg=233
highlight Directory ctermfg=45 
highlight VertSplit ctermfg=240 ctermbg=233
highlight ColorColumn ctermbg=234
highlight Question ctermfg=49 guifg=#00ffaf
highlight DiffAdd ctermfg=49 ctermbg=235 guifg=#00ffaf
highlight DiffChange ctermfg=49 ctermbg=235
highlight DiffDelete ctermfg=198 ctermbg=235 cterm=italic
highlight DiffText ctermfg=49 ctermbg=235 guifg=#00ffaf
highlight CursorLine ctermbg=233 cterm=none
highlight CursorColumn ctermbg=233 cterm=none

"""""""""""""""""""""""""""""""""""""""""""""""""
" => netrw
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight netrwSpecial ctermfg=45
highlight netrwClassify ctermfg=45
highlight netrwExe ctermfg=240
highlight netrwTreeBar ctermfg=240 ctermbg=233
highlight netrwPlain ctermfg=51
"""""""""""""""""""""""""""""""""""""""""""""""""
" => jsx
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight xmlTag     ctermfg=198 guifg=#ff0087
highlight xmlTagName ctermfg=198 guifg=#ff0087
highlight xmlEndTag  ctermfg=198 guifg=#ff0087

"""""""""""""""""""""""""""""""""""""""""""""""""
" => javascript
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight jsImport ctermfg=198 guifg=#ff0087
highlight jsExport ctermfg=198 guifg=#ff0087
highlight jsExportDefault ctermfg=198 guifg=#ff0087
highlight jsFrom ctermfg=198 guifg=#ff0087
highlight jsTernaryIfOperator ctermfg=198 guifg=#ff0087
highlight jsModuleAs ctermfg=198 guifg=#ff0087
highlight jsDecorator ctermfg=198 guifg=#ff0087
highlight jsLabel ctermfg=198 guifg=#ff0087
highlight jsSwitchCase ctermfg=198 guifg=#ff0087
highlight jsSwitchColon ctermfg=198 guifg=#ff0087
highlight jsForAwait ctermfg=198 guifg=#ff0087
highlight jsClassMethodType ctermfg=198 guifg=#ff0087

highlight jsDecoratorFunction ctermfg=15 guifg=#ffffff
highlight jsModuleAsterisk ctermfg=15 guifg=#ffffff
highlight jsArrowFuncArgs ctermfg=15 guifg=#ffffff
highlight jsObjectKeyString ctermfg=15 guifg=#ffffff
highlight jsObjectStringKey ctermfg=15 guifg=#ffffff
highlight jsDestructuringAssignment ctermfg=15 guifg=#ffffff
highlight jsDestructuringNoise ctermfg=15 guifg=#ffffff
highlight jsFuncParens ctermfg=15 guifg=#ffffff

highlight jsNull ctermfg=63
highlight jsBooleanTrue ctermfg=63
highlight jsBooleanFalse ctermfg=63

highlight jsObjectKey ctermfg=194

highlight jsObjectMethodType ctermfg=11 guifg=#ffff00
highlight jsClassFuncName ctermfg=11 cterm=italic guifg=#ffff00
highlight jsClassDefinition ctermfg=11 cterm=italic guifg=#ffff00
highlight jsClassProperty ctermfg=11 guifg=#ffff00
highlight jsFuncName ctermfg=11 cterm=italic guifg=#ffff00

highlight jsObjectFuncName ctermfg=81 cterm=italic
highlight jsThis ctermfg=81 guifg=#5fd7ff
highlight jsAsyncKeyword ctermfg=81 guifg=#5fd7ff
highlight jsStorageClass ctermfg=81 guifg=#5fd7ff
highlight jsPrototype ctermfg=81 guifg=#5fd7ff
highlight jsBuiltins ctermfg=81 guifg=#5fd7ff
highlight jsSuper ctermfg=81 guifg=#5fd7ff
highlight jsBlockLabel ctermfg=81 guifg=#5fd7ff
highlight jsBlockLabelKey ctermfg=81 guifg=#5fd7ff
highlight jsFunction ctermfg=81 guifg=#5fd7ff
highlight jsGlobalObjects ctermfg=81 guifg=#5fd7ff
highlight jsGlobalNodeObjects ctermfg=81 guifg=#5fd7ff
highlight jsSpecial ctermfg=81 guifg=#5fd7ff
highlight jsBlockLabel ctermfg=81 guifg=#5fd7ff
highlight jsCharacter ctermfg=81 guifg=#5fd7ff
highlight jsArrowFunction ctermfg=81 guifg=#5fd7ff

highlight jsNumber ctermfg=141
highlight jsFloat ctermfg=141

highlight jsFuncArgOperator ctermfg=202
highlight jsFuncArgs ctermfg=202

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
highlight shStatement ctermfg=81 guifg=#5fd7ff
highlight bashStatement ctermfg=81 guifg=#5fd7ff
highlight shArithmetic ctermfg=141

highlight shEscape ctermfg=15 guifg=#ffffff
highlight shCtrlSeq ctermfg=15 guifg=#ffffff
highlight shSpecial ctermfg=15 guifg=#ffffff
highlight shCaseCommandSub ctermfg=15 guifg=#ffffff
highlight shCommandSub ctermfg=15 guifg=#ffffff
highlight shDerefSimple ctermfg=15 guifg=#ffffff
highlight shDeref ctermfg=15 guifg=#ffffff

highlight shExSingleQuote ctermfg=49 guifg=#00ffaf
highlight shExDoubleQuote ctermfg=49 guifg=#00ffaf

highlight shStatement ctermfg=198 guifg=#ff0087
highlight shExpr ctermfg=198 guifg=#ff0087
highlight shHereDoc ctermfg=198 guifg=#ff0087
highlight shEcho ctermfg=198 guifg=#ff0087
highlight shEchoQuote ctermfg=198 guifg=#ff0087

