set hidden
set nowrap

filetype plugin indent on
syntax on
runtime macros/matchit.vim

" GENERAL
set laststatus=2

set history=200
set ignorecase
set smartcase
set infercase

" enable 256 colors
set t_Co=256
let &t_ut=''
set background=dark

" turn on line numbering
set number
set clipboard=unnamed

" sane text files
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

" sane editing
set colorcolumn=80
set viminfo='25,\"50,n~/.viminfo

" COLOR SCHEME:
colorscheme tender
" hi Normal guibg=NONE ctermbg=NONE
hi colorcolumn ctermbg=8
let g:lightline = { 'colorscheme': 'wombat' }

set incsearch
set hlsearch
" hi Search ctermbg=LightYellow ctermfg=Red
" hi IncSearch ctermbg=DarkYellow ctermfg=DarkRed
nmap <leader>/ :noh<CR>

" LIGHTLINE:
set noshowmode

" NAVIGATION:
" move through split windows
nmap <leader>k :wincmd k<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>h :wincmd h<CR>
nmap <leader>l :wincmd l<CR>
nmap <leader>x :close <CR>
" close buffer
nmap <leader>d :bd<CR>

" restore place in file from previous session
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" FINDING FILES:
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" Display all matching files when we tab complete
set wildmenu

let g:tagbar_compact = 1

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" Tweaks for browsing
nmap <leader>f :Explore<CR>
nmap <leader><s-f> :edit.<CR>

" SYNTASTIC:
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
map <leader>s :SyntasticCheck<CR>
map <leader>a :SyntasticReset<CR>
map <leader>n :lnext<CR>
map <leader>p :lprev<CR>

" TAGBAR:
map <leader>m :TagbarToggle<CR>

" COPYPASTE:
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" REMAPS:
map <Space> <Leader>
" switch back to terminal
nnoremap <leader>t :stop<CR>

nmap <leader>e :edit %%
" %% to expand to path of current buffer
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/': '%%'

" SLIME:
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.2"}

" MOUSE
set mouse=a
let g:is_mouse_enabled = 1

" netrw
let g:netrw_altv = 1
let g:netrw_dirhistmax = 0

nnoremap & :&&<CR>
xnoremap & :&&<CR>

nmap <leader>s :update<CR>
set grepprg=ack\ --nogroup\ --column\ $* 
set grepformat=%f:%l:%c:%m

cnoreabbrev H vert h
