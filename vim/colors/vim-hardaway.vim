
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
au FileType haskell call AdditionalHaskellHighlights()

let g:hs_highlight_boolean = 1
let g:hs_highlight_types = 1
let g:hs_highlight_more_types = 1

highlight hsCharacter        ctermfg=15  guifg=white cterm=italic gui=italic
highlight hsLineComment      ctermfg=8   guifg=grey
highlight hsComment          ctermfg=8   guifg=grey
highlight hsConSym           ctermfg=198 guifg=deeppink1
highlight hsConditional      ctermfg=198 guifg=deeppink1
highlight hsDebug            ctermfg=48  guifg=springgreen1 cterm=underline
highlight hsDelimiter        ctermfg=15  guifg=white
highlight hsEnumConst        ctermfg=11  guifg=yellow
highlight hsExitCode         ctermfg=81  guifg=steelblue1
highlight hsFloat            ctermfg=141 guifg=mediumpurple1
highlight hsImport           ctermfg=198 guifg=deeppink1
highlight hsImportMod        ctermfg=198 guifg=deeppink1
highlight hsInfix            ctermfg=198 guifg=deeppink1
highlight hsLineComment      ctermfg=8   guifg=grey
highlight hsMaybe            ctermfg=81  guifg=steelblue1
highlight hsModule           ctermfg=198 guifg=deeppink1
highlight hsNumber           ctermfg=141 guifg=mediumpurple1
highlight hsOperator         ctermfg=198 guifg=deeppink1
highlight hsOrdering         ctermfg=81  guifg=steelblue1
highlight hsPragma           ctermfg=11  guifg=yellow       cterm=italic gui=italic
highlight hsSpecialChar      ctermfg=11  guifg=yellow
highlight hsSpecialCharError ctermfg=202 guifg=orangered1 
highlight hsStatement        ctermfg=81  guifg=steelblue1
highlight hsString           ctermfg=49  guifg=mediumspringgreen
highlight hsStructure        ctermfg=198 guifg=deeppink1
highlight hsType             ctermfg=81  guifg=steelblue1
highlight hsTypedef          ctermfg=198 guifg=deeppink1
highlight hsVarSym           ctermfg=198 guifg=deeppink1
highlight ConId              ctermfg=81  guifg=steelblue1

function! AdditionalHaskellHighlights() 
  syn match haskellRecordField contained containedin=haskellBlock
    \ "[_a-z][a-zA-Z0-9_']*\(,\s*[_a-z][a-zA-Z0-9_']*\)*\_s\+::\_s"
    \ contains=
    \ haskellIdentifier,
    \ haskellOperators,
    \ haskellSeparator,
    \ haskellParens
  syn match haskellTypeSig
    \ "^\s*\(where\s\+\|let\s\+\|default\s\+\)\?[_a-z][a-zA-Z0-9_']*#\?\(,\s*[_a-z][a-zA-Z0-9_']*#\?\)*\_s\+::\_s"
    \ contains=
    \ haskellWhere,
    \ haskellLet,
    \ haskellDefault,
    \ haskellIdentifier,
    \ haskellOperators,
    \ haskellSeparator,
    \ haskellParens
  syn keyword haskellWhere where
  syn keyword haskellLet let
  syn keyword haskellDeclKeyword module class instance newtype deriving in
  syn match haskellDecl "\<\(type\|data\)\>\s\+\(\<family\>\)\?"
  syn keyword haskellDefault default
  syn keyword haskellImportKeywords import qualified safe as hiding contained
  syn keyword haskellForeignKeywords foreign export import ccall safe unsafe interruptible capi prim contained
  syn region haskellForeignImport start="\<foreign\>" end="\_s\+::\s" keepend
    \ contains=
    \ haskellString,
    \ haskellOperators,
    \ haskellForeignKeywords,
    \ haskellIdentifier
  syn match haskellImport "^\s*\<import\>\s\+\(\<safe\>\s\+\)\?\(\<qualified\>\s\+\)\?.\+\(\s\+\<as\>\s\+.\+\)\?\(\s\+\<hiding\>\)\?"
    \ contains=
    \ haskellParens,
    \ haskellOperators,
    \ haskellImportKeywords,
    \ haskellType,
    \ haskellLineComment,
    \ haskellBlockComment,
    \ haskellPragma
  syn keyword haskellKeyword do case of
  if get(g:, 'haskell_enable_static_pointers', 0)
    syn keyword haskellStatic static
  endif
  syn keyword haskellConditional if then else
  syn match haskellNumber "\<[0-9]\+\>\|\<0[xX][0-9a-fA-F]\+\>\|\<0[oO][0-7]\+\>\|\<0[bB][10]\+\>"
  syn match haskellFloat "\<[0-9]\+\.[0-9]\+\([eE][-+]\=[0-9]\+\)\=\>"
  syn match haskellSeparator  "[,;]"
  syn region haskellParens matchgroup=haskellDelimiter start="(" end=")" contains=TOP,haskellTypeSig,@Spell
  syn region haskellBrackets matchgroup=haskellDelimiter start="\[" end="]" contains=TOP,haskellTypeSig,@Spell
  syn region haskellBlock matchgroup=haskellDelimiter start="{" end="}" contains=TOP,@Spell
  syn keyword haskellInfix infix infixl infixr
  syn keyword haskellBottom undefined error
  syn match haskellOperators "[-!#$%&\*\+/<=>\?@\\^|~:.]\+\|\<_\>"
  syn match haskellQuote "\<'\+" contained
  syn match haskellQuotedType "[A-Z][a-zA-Z0-9_']*\>" contained
  syn region haskellQuoted start="\<'\+" end="\>"
    \ contains=
    \ haskellType,
    \ haskellQuote,
    \ haskellQuotedType,
    \ haskellSeparator,
    \ haskellParens,
    \ haskellOperators,
    \ haskellIdentifier
  syn match haskellLineComment "---*\([^-!#$%&\*\+./<=>\?@\\^|~].*\)\?$"
    \ contains=
    \ haskellTodo,
    \ @Spell
  syn match haskellBacktick "`[A-Za-z_][A-Za-z0-9_\.']*#\?`"
  syn region haskellString start=+"+ skip=+\\\\\|\\"+ end=+"+
    \ contains=@Spell
  syn match haskellIdentifier "[_a-z][a-zA-z0-9_']*" contained
  syn match haskellChar "\<'[^'\\]'\|'\\.'\|'\\u[0-9a-fA-F]\{4}'\>"
  syn match haskellType "\<[A-Z][a-zA-Z0-9_']*\>"
  syn region haskellBlockComment start="{-" end="-}"
    \ contains=
    \ haskellBlockComment,
    \ haskellTodo,
    \ @Spell
  syn region haskellPragma start="{-#" end="#-}"
  syn region haskellLiquid start="{-@" end="@-}"
  syn match haskellPreProc "^#.*$"
  syn keyword haskellTodo TODO FIXME contained
  " Treat a shebang line at the start of the file as a comment
  syn match haskellShebang "\%^#!.*$"
  if !get(g:, 'haskell_disable_TH', 0)
      syn match haskellQuasiQuoted "." containedin=haskellQuasiQuote contained
      syn region haskellQuasiQuote matchgroup=haskellTH start="\[[_a-zA-Z][a-zA-z0-9._']*|" end="|\]"
      syn region haskellTHBlock matchgroup=haskellTH start="\[\(d\|t\|p\)\?|" end="|]" contains=TOP
      syn region haskellTHDoubleBlock matchgroup=haskellTH start="\[||" end="||]" contains=TOP
  endif
  if get(g:, 'haskell_enable_typeroles', 0)
    syn keyword haskellTypeRoles phantom representational nominal contained
    syn region haskellTypeRoleBlock matchgroup=haskellTypeRoles start="type\s\+role" end="$" keepend
      \ contains=
      \ haskellType,
      \ haskellTypeRoles
  endif
  if get(g:, 'haskell_enable_quantification', 0)
    syn keyword haskellForall forall
  endif
  if get(g:, 'haskell_enable_recursivedo', 0)
    syn keyword haskellRecursiveDo mdo rec
  endif
  if get(g:, 'haskell_enable_arrowsyntax', 0)
    syn keyword haskellArrowSyntax proc
  endif
  if get(g:, 'haskell_enable_pattern_synonyms', 0)
    syn keyword haskellPatternKeyword pattern
  endif
  syntax    keyword haskellPragmaKey        LANGUAGE OPTIONS_GHC INLINE NOINLINE LINE contained
  syntax    match   haskellPragmaArg        /\<[a-zA-Z_$][0-9a-zA-Z_$]*\>/ contained 
  syntax    region  haskellPragmaDelim      start=+{-#+ end=+#-}+ contains=haskellPragmaKey,haskellPragmaArg

  highlight def link haskellBottom Macro
  highlight def link haskellTH Boolean
  highlight def link haskellIdentifier Identifier
  highlight def link haskellForeignKeywords Structure
  highlight def link haskellKeyword Keyword
  highlight def link haskellDefault Keyword
  highlight def link haskellConditional Conditional
  highlight def link haskellNumber Number
  highlight def link haskellFloat Float
  highlight def link haskellSeparator Delimiter
  highlight def link haskellDelimiter Delimiter
  highlight def link haskellInfix Keyword
  highlight def link haskellOperators Operator
  highlight def link haskellQuote Operator
  highlight def link haskellShebang Comment
  highlight def link haskellLineComment Comment
  highlight def link haskellBlockComment Comment
  highlight def link haskellPragma SpecialComment
  highlight def link haskellLiquid SpecialComment
  highlight def link haskellString String
  highlight def link haskellChar String
  highlight def link haskellBacktick Operator
  highlight def link haskellQuasiQuoted String
  highlight def link haskellTodo Todo
  highlight def link haskellPreProc PreProc
  highlight def link haskellAssocType Type
  highlight def link haskellQuotedType Type
  highlight def link haskellType Type
  highlight def link haskellImportKeywords Include
  highlight def link haskellDeclKeyword Structure
  highlight def link haskellDecl Structure
  highlight def link haskellWhere Structure
  highlight def link haskellLet Structure
  highlight def link haskellTypeRoles Structure
  highlight def link haskellPatternKeyword Structure
  highlight def link haskellForall Operator
  highlight def link haskellArrowSyntax Keyword
  highlight def link haskellRecursiveDo Keyword

  highlight     link haskellPragmaKey        hsForeign
  highlight     link haskellPragmaArg        haskellPragma
  highlight     link haskellPragmaDelim      haskellBrackets

  highlight haskellKeyword         ctermfg=198 guifg=deeppink1
  highlight haskellImportKeywords  ctermfg=198 guifg=deeppink1
  highlight haskellDecl            ctermfg=198 guifg=deeppink1
  highlight haskellDeclKeyword     ctermfg=198 guifg=deeppink1
  highlight haskellWhere           ctermfg=198 guifg=deeppink1
  highlight haskellLet             ctermfg=198 guifg=deeppink1
  highlight haskellParens          ctermfg=15  guifg=white
  highlight haskellDefault         ctermfg=15  guifg=white
  highlight haskellBlock           ctermfg=15  guifg=white
  highlight haskellBrackets        ctermfg=15  guifg=white
  highlight haskellIdentifier      ctermfg=11  guifg=yellow
  highlight haskellPragma          ctermfg=11  guifg=yellow       cterm=italic gui=italic
  highlight haskellBottom          ctermfg=48  guifg=springgreen1 cterm=underline
  highlight hsForeign              ctermfg=48  guifg=springgreen1
  highlight haskellPatternKeyword  ctermfg=48  guifg=springgreen1
  highlight haskellTypeRoles       ctermfg=48  guifg=springgreen1
  highlight haskellStatic          ctermfg=48  guifg=springgreen1 gui=undercurl
  highlight haskellPreProc         ctermfg=48  guifg=springgreen1 gui=undercurl
  highlight haskellType            ctermfg=81  guifg=steelblue1
  highlight haskellImport          ctermfg=81  guifg=steelblue1
endfunction

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
