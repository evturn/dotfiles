let s:term_red    = 204
let s:term_green  = 49
let s:term_blue   = 81
let s:term_yellow = 11
let s:term_purple = 170
let s:term_white  = 145
let s:term_black  = 235
let s:term_grey   = 236

let s:gui11   = "#ffff00" " yellow
let s:gui15   = "#ffffff" " white
let s:gui49   = "#00ffaf" " mediumspringgreen
let s:gui81   = "#5fd7ff" " steelblue1
let s:gui196  = "#ff0000" " red1
let s:gui198  = "#ff0087" " deeppink1
let s:gui235  = "#262626" " grey15
let s:gui202  = "#ff5f00" " orangered1
let s:gui204  = "#ff5f87" " indianred1

let s:gui000  = "#101010" " black
let s:gui001  = "#1a1a1a" " grey
let s:gui002  = "#282c34" " grey
let s:gui003  = "#303030" " grey
let s:gui0011 = "#FFEE00" " yellow
let s:gui0015 = "#abb2bf" " white
let s:gui009  = "#E06C75" " red

let g:airline#themes#dark#palette = {}
let airline#extensions#syntastic#error_symbol = '◉'
let g:airline#extensions#wordcount#enabled = 0

""""""""""""""" NORMAL
let s:N1 = [ s:gui000, s:gui49, s:term_black, s:term_green ]
let s:N2 = [ s:gui0015, s:gui001, s:term_white, s:term_grey ]
let s:N3 = [ s:gui49, s:gui002, s:term_green, '' ]
let g:airline#themes#dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#dark#palette.accents = {
    \ 'red': [ s:gui009, '', s:term_red, 0 ]
    \ }
let group = airline#themes#get_highlight('vimCommand')
let g:airline#themes#dark#palette.normal_modified = {
    \ 'airline_c': [ group[0], '', group[2], '', '' ]
    \ }

""""""""""""""" INSERT
let s:I1 = [ s:gui000, s:gui0011, s:term_black, s:term_yellow ]
let s:I2 = s:N2
let s:I3 = [ s:gui0011, s:gui002, s:term_yellow, '' ]
let g:airline#themes#dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#dark#palette.insert_modified = g:airline#themes#dark#palette.normal_modified

""""""""""""""" REPLACE
let s:R1 = [ s:gui15, s:gui009, s:term_white, s:term_red ]
let s:R2 = s:N2
let s:R3 = [ s:gui009, s:gui002, s:term_red, '' ]
let g:airline#themes#dark#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#dark#palette.replace_modified = g:airline#themes#dark#palette.normal_modified

""""""""""""""" VISUAL
let s:V1 = [ s:gui000, s:gui81, s:term_black, s:term_blue ]
let s:V2 = s:N2
let s:V3 = [ s:gui81, s:gui002, s:term_blue, '' ]
let g:airline#themes#dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#dark#palette.visual_modified = g:airline#themes#dark#palette.normal_modified

""""""""""""""" INACTIVE
let s:IA1 = [ s:gui0015, s:gui003, s:term_black, s:term_white ]
let s:IA2 = [ s:gui0015, s:gui001, s:term_white, s:term_black ]
let s:IA3 = s:N2
let g:airline#themes#dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#dark#palette.inactive_modified = {
    \ 'airline_c': [ group[0], '', group[2], '', '' ]
    \ }
let s:WI = [ s:gui000, s:gui0011, s:term_black, s:term_yellow ]
let g:airline#themes#dark#palette.normal.airline_warning = [
    \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
    \ ]

""""""""""""""" WARNINGS
let g:airline#themes#dark#palette.normal_modified.airline_warning =
    \ g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.insert.airline_warning =
    \ g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.insert_modified.airline_warning =
    \ g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.visual.airline_warning =
    \ g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.visual_modified.airline_warning =
    \ g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.replace.airline_warning =
    \ g:airline#themes#dark#palette.normal.airline_warning
let g:airline#themes#dark#palette.replace_modified.airline_warning =
    \ g:airline#themes#dark#palette.normal.airline_warning

""""""""""""""" ERRORS
let s:ER = [ s:gui003, s:gui009, s:term_black, s:term_red ]
let g:airline#themes#dark#palette.normal.airline_error = [
    \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
    \ ]
let g:airline#themes#dark#palette.normal_modified.airline_error =
    \ g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.insert.airline_error =
    \ g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.insert_modified.airline_error =
    \ g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.visual.airline_error =
    \ g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.visual_modified.airline_error =
    \ g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.replace.airline_error =
    \ g:airline#themes#dark#palette.normal.airline_error
let g:airline#themes#dark#palette.replace_modified.airline_error =
    \ g:airline#themes#dark#palette.normal.airline_error
