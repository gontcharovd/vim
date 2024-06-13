setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab

let python_highlight_all = 1
nmap <buffer> <leader>r <Esc>:w<CR>:!clear;python %<CR>
let g:syntastic_enable_python_lintr_checker = 1
let g:syntastic_r_checkers = ["flake8"]
" nmap <leader>d :!python -m black %<CR>
" nmap <buffer> <leader>b oimport ipdb;ipdb.set_trace(context=5)<ESC>
