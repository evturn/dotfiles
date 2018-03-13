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

let b:current_syntax = "haskell"
