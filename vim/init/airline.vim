let s:term_red    = 204
let s:term_green  = 49
let s:term_yellow = 11
let s:term_blue   = 81
let s:term_purple = 170
let s:term_white  = 145
let s:term_black  = 235
let s:term_grey   = 236

let g:airline#themes#dark#palette = {}

" Normal
let s:N1 = [ '#101010', '#00ffaf', s:term_black, s:term_green ]
let s:N2 = [ '#ABB2BF', '#1A1A1A', s:term_white, s:term_grey ]
let s:N3 = [ '#00ffaf', '#282C34', s:term_green, '' ]
let g:airline#themes#dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#dark#palette.accents = {
      \ 'red': [ '#E06C75', '', s:term_red, 0 ]
      \ }
let group = airline#themes#get_highlight('vimCommand')
let g:airline#themes#dark#palette.normal_modified = {
      \ 'airline_c': [ group[0], '', group[2], '', '' ]
      \ }

" Insert
let s:I1 = [ '#101010', '#FFEE00', s:term_black, s:term_yellow ]
let s:I2 = s:N2
let s:I3 = [ '#FFEE00', '#282C34', s:term_yellow, '' ]
let g:airline#themes#dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#dark#palette.insert_modified = g:airline#themes#dark#palette.normal_modified

" Replace
let s:R1 = [ '#FFFFFF', '#E06C75', s:term_white, s:term_red ]
let s:R2 = s:N2
let s:R3 = [ '#E06C75', '#282C34', s:term_red, '' ]
let g:airline#themes#dark#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#dark#palette.replace_modified = g:airline#themes#dark#palette.normal_modified

" Visual
let s:V1 = [ '#101010', '#5fd7ff', s:term_black, s:term_blue ]
let s:V2 = s:N2
let s:V3 = [ '#5fd7ff', '#282C34', s:term_blue, '' ]
let g:airline#themes#dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#dark#palette.visual_modified = g:airline#themes#dark#palette.normal_modified

" Inactive
let s:IA1 = [ '#ABB2BF', '#303030', s:term_black, s:term_white ]
let s:IA2 = [ '#ABB2BF', '#1A1A1A', s:term_white, s:term_black ]
let s:IA3 = s:N2
let g:airline#themes#dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#dark#palette.inactive_modified = {
      \ 'airline_c': [ group[0], '', group[2], '', '' ]
      \ }
let s:WI = [ '#101010', '#FFEE00', s:term_black, s:term_yellow ]
let g:airline#themes#dark#palette.normal.airline_warning = [
      \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
      \ ]

" Warnings
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

" Errors
let s:ER = [ '#303030', '#E06C75', s:term_black, s:term_red ]
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
