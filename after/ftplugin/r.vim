set tabstop=2
set shiftwidth=2
set softtabstop=2

nnoremap <buffer> <leader>r <Esc>:w<CR>:!clear;Rscript %<CR>

" Strip r''' and ''' when sending to R console with vim-slime
function! _EscapeText_r(text)
  call system("cat > ~/.slime_r", a:text)
  return ["source('~/.slime_r', echo = TRUE, max.deparse.length = 4095)\r"]
endfunction

imap <c-K> <space><-<space>
imap <c-L> <space>%>%
imap <c-=> <space>:=<space>

" fix indentation for R
let r_indent_align_args = 0

let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ["lintr"]


