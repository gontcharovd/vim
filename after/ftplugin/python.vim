setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab

let python_highlight_all = 1
nmap <buffer> <leader>r <Esc>:w<CR>:!clear;python %<CR>
nmap <leader>e :!python -m black %<CR>
