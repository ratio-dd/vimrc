imap jk <Esc>

syntax on

colorscheme desert

set clipboard=unnamed

set shortmess+=I

set nu

set number

set relativenumber

set laststatus=2

set nocompatible

set backspace=indent,eol,start

set hidden

set ignorecase

set smartcase

set mouse+=a

set autoindent

set tabstop=4

set noexpandtab

set guifont=Monaco:h18

" 当输入一个左括号时自动匹配右括号
set showmatch

"自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
"":inoremap " ""<ESC>i
"":inoremap ' ''<ESC>i
function! ClosePair(char)
if getline('.')[col('.') - 1] == a:char
return "\<Right>"
else
return a:char
endif
endfunction
filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全


" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
