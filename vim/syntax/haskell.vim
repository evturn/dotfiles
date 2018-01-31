if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

syn spell notoplevel
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
syn keyword haskellStatic static
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

syn match haskellShebang "\%^#!.*$"
syn keyword haskellTypeRoles phantom representational nominal contained
syn region haskellTypeRoleBlock matchgroup=haskellTypeRoles start="type\s\+role" end="$" keepend
  \ contains=
  \ haskellType,
  \ haskellTypeRoles

syn keyword haskellForall forall
syn keyword haskellRecursiveDo mdo rec
syn keyword haskellArrowSyntax proc
syn keyword haskellPatternKeyword pattern

syntax keyword haskellPragmaKey LANGUAGE OPTIONS_GHC INLINE NOINLINE LINE contained
syntax match   haskellPragmaArg /\<[a-zA-Z_$][0-9a-zA-Z_$]*\>/ contained 
syntax region  haskellPragmaDelim start=+{-#+ end=+#-}+ contains=haskellPragmaKey,haskellPragmaArg

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

highlight def link haskellForall Operator
highlight def link haskellRecursiveDo Keyword
highlight def link haskellArrowSyntax Keyword
highlight def link haskellStatic Keyword
highlight def link haskellPatternKeyword Structure
highlight def link haskellTypeRoles Structure

highlight     link haskellPragmaKey        hsForeign
highlight     link haskellPragmaArg        haskellPragma
highlight     link haskellPragmaDelim      haskellBrackets

highlight hsCharacter            ctermfg=15  guifg=white cterm=italic gui=italic
highlight hsLineComment          ctermfg=8   guifg=grey
highlight hsComment              ctermfg=8   guifg=grey
highlight hsConSym               ctermfg=198 guifg=deeppink1
highlight hsConditional          ctermfg=198 guifg=deeppink1
highlight hsDebug                ctermfg=48  guifg=springgreen1 cterm=underline
highlight hsDelimiter            ctermfg=15  guifg=white
highlight hsEnumConst            ctermfg=11  guifg=yellow
highlight hsExitCode             ctermfg=81  guifg=steelblue1
highlight hsFloat                ctermfg=141 guifg=mediumpurple1
highlight hsImport               ctermfg=198 guifg=deeppink1
highlight hsImportMod            ctermfg=198 guifg=deeppink1
highlight hsInfix                ctermfg=198 guifg=deeppink1
highlight hsLineComment          ctermfg=8   guifg=grey
highlight hsMaybe                ctermfg=81  guifg=steelblue1
highlight hsModule               ctermfg=198 guifg=deeppink1
highlight hsNumber               ctermfg=141 guifg=mediumpurple1
highlight hsOperator             ctermfg=198 guifg=deeppink1
highlight hsOrdering             ctermfg=81  guifg=steelblue1
highlight hsPragma               ctermfg=11  guifg=yellow       cterm=italic gui=italic
highlight hsSpecialChar          ctermfg=11  guifg=yellow
highlight hsSpecialCharError     ctermfg=202 guifg=orangered1 
highlight hsStatement            ctermfg=81  guifg=steelblue1
highlight hsString               ctermfg=49  guifg=mediumspringgreen
highlight hsStructure            ctermfg=198 guifg=deeppink1
highlight hsType                 ctermfg=81  guifg=steelblue1
highlight hsTypedef              ctermfg=198 guifg=deeppink1
highlight hsVarSym               ctermfg=198 guifg=deeppink1
highlight ConId                  ctermfg=81  guifg=steelblue1
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

let b:current_syntax = "haskell"
