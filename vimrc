"View
set nu 
set ru 
set cursorline 
set cursorcolumn 
set laststatus=2 
set t_Co=256 
set colorcolumn=81
set showmatch

"Color Scheme
color molokai

"WildMenu
set wildmenu 
set wildignore=*.o,*~,*.pyc

"Editor
set et 
set autoindent
set nobackup 
set noswapfile 
set sw=2 sts=2 ts=2
filetype plugin indent on
syntax on

"Search
set incsearch
set hlsearch
set ignorecase
set smartcase

"NMap
let mapleader=","
nmap <cr> :nohlsearch<cr>
nmap nt :NERDTreeToggle<cr>
nmap <Leader>e :tabe 
nmap <Leader>c :tabc<cr>
nmap <Leader>h :tabp<cr>
nmap <Leader>l :tabn<cr>
nmap <Leader>n :tabnew<cr>
nmap <Leader>< :bp<cr>
nmap <Leader>> :bn<cr>
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
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tomasr/molokai'

"EasyMotion
let g:EasyMotion_leader_key = '<Leader>'

"NerdTree
let NERDTreeIgnore = ['\.o$','\.so','\.pyc$']
