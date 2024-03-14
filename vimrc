set shell=fish
set hidden
set nowrap

filetype plugin indent on
syntax on
runtime macros/matchit.vim

set laststatus=2

set history=200
set ignorecase
set smartcase
set infercase

" fixes background issue with commented lines in tmux
set t_ut=

set number
set clipboard=unnamed

set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

set colorcolumn=80

set termguicolors

" remember cursor positions
set viminfo='25,\"50,n~/.viminfo

colorscheme nord
let g:lightline = { 'colorscheme': 'nord' }

set incsearch
set hlsearch
nmap <leader>/ :noh<CR>

" don't show vim mode in writing
set noshowmode

nmap <leader>k :wincmd k<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>h :wincmd h<CR>
nmap <leader>l :wincmd l<CR>
nmap <leader>x :close <CR>
nmap <leader>d :bp\|bd #<CR>

" restore place in file from previous session
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Provides tab-completion for all file-related tasks
set path+=**
" Display all matching files when we tab complete
set wildmenu

" Create the `tags` using universal ctags
command! MakeTags !ctags -R .

" file browsing
nmap <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader><s-f> :edit.<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_save = 0
let g:syntastic_check_on_wq = 0
map <leader>q :SyntasticCheck<CR>
map <leader>a :SyntasticReset<CR>
map <leader>n :lnext<CR>
map <leader>p :lprev<CR>

" copypaste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

map <Space> <Leader>
" switch back to terminal
nnoremap <leader>t :stop<CR>

nmap <leader>e :!thunar %%<CR><CR>
" %% to expand to path of current buffer
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/': '%%'

set mouse=a
let g:is_mouse_enabled = 1

let g:netrw_altv = 1
let g:netrw_dirhistmax = 0

nnoremap & :&&<CR>
xnoremap & :&&<CR>

nmap <leader>s :update<CR>
nmap <leader>e :edit!<CR>
nmap <leader>w :w !sudo tee % > /dev/null<CR>
nmap <leader>p :!pandoc -i % -o %<.pdf<CR>

set grepprg=ack\ --nogroup\ --column\ $* 
set grepformat=%f:%l:%c:%m

cnoreabbrev H vert h

nnoremap n nzzzv
nnoremap N Nzzzv

let g:vim_markdown_folding_disabled = 1

set nocompatible

augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
augroup END

" Ranger in Vim
let g:ranger_map_keys = 0
nmap <leader>r :Ranger<CR>
let g:ranger_replace_netrw = 1
