let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '^\.git$']
let NERDTreeStatusline=-1
let NERDTreeMinimalUI=0
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeDirArrowExpandable = '→'
let g:NERDTreeDirArrowCollapsible = '●'

function! CursorChange()
  if &filetype == 'nerdtree'
    highlight CursorLine guifg=white guibg=steelblue1
  endif
endfunction

autocmd vimenter,bufenter * call CursorChange()
