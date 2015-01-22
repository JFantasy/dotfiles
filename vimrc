""View
syntax on
set nu 
set ru 
set cursorline 
set laststatus=2 
set t_Co=256 
set colorcolumn=80
set showmatch
set scrolljump=5
set scrolloff=2

"Encoding
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set termencoding=utf-8

"Color Scheme
if isdirectory(expand("$HOME/.vim/colors")) 
  color molokai
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
set sw=2 sts=2 ts=2
filetype plugin indent on

"Search
set incsearch
set hlsearch
set ignorecase
set smartcase
set nowrapscan

"NMap
let mapleader=","
nmap <cr> :nohlsearch<cr>
nmap <Leader><Leader> :NERDTreeToggle<cr>
nmap <Leader>. :Tagbar<cr>
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

"Bundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Bundle List
Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'tomasr/molokai'

"NerdTree
let NERDTreeIgnore = ['\.o$','\.so','\.pyc$']

"Sytastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
