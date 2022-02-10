"View
set nu 
set ru 
set cursorline 
set laststatus=2 
set t_Co=256 
set colorcolumn=100
set showmatch
syntax on

"Color Scheme
if isdirectory(expand("$HOME/.vim/colors")) 
  color jellybeans
endif


"WildMenu
set wildmenu 
set wildignore=*.o,*~,*.pyc

"Editor
set et 
set autoindent
set nobackup 
set noswapfile 
set hidden
set splitright
set splitbelow
set autoread
set sw=2 sts=2 ts=2
set scrolljump=5
set scrolloff=3
set mouse=a
filetype plugin indent on

"Search
set incsearch
set hlsearch
set ignorecase
set smartcase

"NMap
let mapleader=","
nmap <cr> :nohlsearch<cr>
nmap <Leader><Leader> <plug>NERDTreeTabsToggle<CR>
nmap <Leader>. :Tagbar<cr>
nmap <Leader>b :tabp<cr>
nmap <Leader>n :tabn<cr>
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

"Bundle
source ~/.vimrc.bundle
