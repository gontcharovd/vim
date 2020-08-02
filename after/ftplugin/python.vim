" https://www.freecodecamp.org/news/turning-vim-into-an-r-ide-cd9602e8c217/
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

imap <c-K> <space><-<space>
imap <c-L> <space>%>%
imap <c-=> <space>:=<space>

" fix indentation for R
let r_indent_align_args = 0

" SYNTAX:
let python_highlight_all = 1

nmap <buffer> <leader>r <Esc>:w<CR>:!clear;python %<CR>

nmap <leader>b oimport ipdb;ipdb.set_trace()<ESC>

let g:slime_python_ipython = 1

let g:syntastic_enable_python_lintr_checker = 1
let g:syntastic_r_checkers = ["flake8"]
" let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E225'
