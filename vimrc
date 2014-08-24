" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Set up vundle
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required 
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"
" Plugins
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'

" Language support
Plugin 'nono/vim-handlebars'
Plugin 'jnwhiteh/vim-golang'

" Themes
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on " required

" Automatically pick up vimrc changes on write
autocmd! BufWritePost .vimrc source %
autocmd! BufWritePost .gvimrc source %

" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <leader>x :nohl<CR>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Line numbering
set number
set relativenumber

" Tab settings
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
