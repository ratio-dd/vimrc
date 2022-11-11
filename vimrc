"normal setting
imap jk <Esc>
noremap ; :
syntax on

"Reset Mapleader
let mapleader=" "
noremap <LEADER><CR> :nohlsearch<CR>

noremap = nzz
noremap - Nzz

noremap J 5j
noremap K 5k
noremap H 7h
noremap L 5l

"Unbind s key
map s <nop>


"split command
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize -5<CR>
map <right> :vertical resize +5<CR>

set wrap
set wildmenu
set cursorline
set ruler
set showcmd
set clipboard=unnamed
set nu
set number
set relativenumber

set ignorecase
set smartcase
set showmatch


set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"about tab - space
set tabstop=4
set expandtab
set softtabstop=4

"set laststatus=2
"set nocompatible
"set backspace=indent,eol,start
"set hidden
"set mouse+=a
"set autoindent

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'

call plug#end()


"color setting
colorscheme snazzy
let g:SnazzyTransparent = 1

"YouCompleteMe configure
let g:ycm_enable_semantic_highlighting=1
let g:ycm_enable_inlay_hints=1

