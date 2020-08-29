set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

nnoremap <buffer> <leader>r <Esc>:w<CR>:!clear;Rscript %<CR>

function! _EscapeText_r(text)
  call system("cat > ~/.slime_r", a:text)
  return ["source('~/.slime_r', echo = TRUE, max.deparse.length = 4095)\r"]
endfunction

imap <c-K> <space><-<space>
imap <c-L> <space>%>%

" fix indentation for R
let r_indent_align_args = 0

let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ["lintr"]
let g:syntastic_r_lintr_linters = "with_defaults(object_usage_linter = NULL)"
