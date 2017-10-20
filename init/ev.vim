set background=dark
highlight clear
if has("syntax_on")
  syntax reset
endif
let g:colors_name = "Ev"

" 15  = white
" 49  = green
" 81  = blue
" 198 = red
"""""""""""""""""""""""""""""""""""""""""""""""""
" => Base
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight Normal ctermfg=15 ctermbg=233
highlight LineNr ctermfg=240 ctermbg=233
highlight Comment ctermfg=8
highlight Number ctermfg=141
highlight Float ctermfg=141
highlight Boolean ctermfg=63
highlight Character ctermfg=15
highlight String ctermfg=49
highlight Constant ctermfg=15 cterm=bold
highlight Delimiter ctermfg=15
highlight Identifier ctermfg=81
highlight Define ctermfg=81
highlight keyword ctermfg=81 cterm=bold
highlight Operator ctermfg=198
highlight Function ctermfg=198
highlight Conditional ctermfg=198
highlight Statement ctermfg=198
highlight Repeat ctermfg=198
highlight Label ctermfg=198
highlight Tag ctermfg=198
highlight type ctermfg=183
highlight typedef ctermfg=183
highlight Ignore ctermfg=244 ctermbg=233
highlight MatchParen ctermfg=81 ctermbg=233 cterm=none
highlight ModeMsg ctermfg=15
highlight Macro ctermfg=15
highlight Error ctermfg=9 ctermbg=233
highlight ErrorMsg ctermfg=9 ctermbg=233
highlight MoreMsg ctermfg=15
highlight SpecialKey ctermfg=11
highlight SpecialChar ctermfg=33
highlight PreProc ctermfg=42
highlight PreCondit ctermfg=33
highlight StorageClass ctermfg=33
highlight Special ctermfg=81
highlight NonText ctermfg=240
highlight Folded ctermfg=240 ctermbg=235
highlight FoldColumn ctermfg=240 ctermbg=233
highlight Directory ctermfg=45 
highlight VertSplit ctermfg=240 ctermbg=233

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
highlight xmlTag     ctermfg=198
highlight xmlTagName ctermfg=198
highlight xmlEndTag  ctermfg=198

"""""""""""""""""""""""""""""""""""""""""""""""""
" => javascript
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight jsImport ctermfg=198
highlight jsExport ctermfg=198
highlight jsExportDefault ctermfg=198
highlight jsFrom ctermfg=198
highlight jsTernaryIfOperator ctermfg=198
highlight jsModuleAs ctermfg=198
highlight jsDecorator ctermfg=198
highlight jsLabel ctermfg=198
highlight jsSwitchCase ctermfg=198
highlight jsSwitchColon ctermfg=198
highlight jsForAwait ctermfg=198
highlight jsClassMethodType ctermfg=198

highlight jsDecoratorFunction ctermfg=15
highlight jsModuleAsterisk ctermfg=15
highlight jsArrowFuncArgs ctermfg=15
highlight jsObjectKeyString ctermfg=15
highlight jsObjectStringKey ctermfg=15
highlight jsDestructuringAssignment ctermfg=15
highlight jsDestructuringNoise ctermfg=15
highlight jsFuncParens ctermfg=15

highlight jsNull ctermfg=63
highlight jsBooleanTrue ctermfg=63
highlight jsBooleanFalse ctermfg=63

highlight jsObjectKey ctermfg=194

highlight jsObjectMethodType ctermfg=11
highlight jsClassFuncName ctermfg=11 cterm=italic
highlight jsClassDefinition ctermfg=11 cterm=italic
highlight jsClassProperty ctermfg=11
highlight jsFuncName ctermfg=11 cterm=italic

highlight jsObjectFuncName ctermfg=81 cterm=italic
highlight jsThis ctermfg=81
highlight jsAsyncKeyword ctermfg=81
highlight jsStorageClass ctermfg=81
highlight jsPrototype ctermfg=81
highlight jsBuiltins ctermfg=81
highlight jsSuper ctermfg=81
highlight jsBlockLabel ctermfg=81
highlight jsBlockLabelKey ctermfg=81
highlight jsFunction ctermfg=81
highlight jsGlobalObjects ctermfg=81
highlight jsGlobalNodeObjects ctermfg=81
highlight jsSpecial ctermfg=81
highlight jsBlockLabel ctermfg=81
highlight jsCharacter ctermfg=81
highlight jsArrowFunction ctermfg=81

highlight jsNumber ctermfg=141
highlight jsFloat ctermfg=141

highlight jsFuncArgOperator ctermfg=202
highlight jsFuncArgs ctermfg=202


"""""""""""""""""""""""""""""""""""""""""""""""""
" => haskell
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight haskellKeyword ctermfg=198
highlight haskellImportKeywords ctermfg=198
highlight haskellDecl ctermfg=198
highlight haskellDeclKeyword ctermfg=198
highlight haskellWhere ctermfg=198
highlight haskellLet ctermfg=198
highlight haskellIdentifier ctermfg=11

highlight haskellRecordField ctermfg=42

highlight haskellBottom ctermfg=48 cterm=underline

highlight haskellPragma ctermfg=81

highlight haskellDefault ctermfg=15

highlight haskellType ctermfg=81

"""""""""""""""""""""""""""""""""""""""""""""""""
" => sh.vim
"""""""""""""""""""""""""""""""""""""""""""""""""
highlight shStatement ctermfg=81
highlight bashStatement ctermfg=81
highlight shArithmetic ctermfg=141

highlight shEscape ctermfg=15
highlight shCtrlSeq ctermfg=15
highlight shSpecial ctermfg=15
highlight shCaseCommandSub ctermfg=15
highlight shCommandSub ctermfg=15
highlight shDerefSimple ctermfg=15
highlight shDeref ctermfg=15

highlight shExSingleQuote ctermfg=49
highlight shExDoubleQuote ctermfg=49

highlight shStatement ctermfg=198
highlight shExpr ctermfg=198
highlight shHereDoc ctermfg=198
highlight shEcho ctermfg=198
highlight shEchoQuote ctermfg=198

