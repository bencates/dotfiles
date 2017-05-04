" Use Vim extensions; must be first thing in file
set nocompatible

" Use a POSIX compliant shell
set shell=/bin/bash

" BEGIN Vundle setup
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'kien/ctrlp.vim'
Plugin 'ddollar/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'drmikehenry/vim-fontsize'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'bronson/vim-trailing-whitespace'
" Plugin 'Valloric/YouCompleteMe' " https://github.com/Valloric/YouCompleteMe#installation
Plugin 'mileszs/ack.vim'

" Languages and Frameworks
Plugin 'tpope/vim-rails'         " Ruby/Rails
Plugin 'spf13/PIV'               " PHP
Plugin 'fatih/vim-go'            " Go
Plugin 'evidens/vim-twig'        " Twig
Plugin 'juvenn/mustache.vim'     " Mustache
Plugin 'elixir-lang/vim-elixir'  " Elixir
Plugin 'pangloss/vim-javascript' " JavaScript
Plugin 'posva/vim-vue'           " Vue

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on
" END Vundle setup



" Sane window change shortcuts
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Force a few lines above and below the cursor
set scrolloff=4

" Smart relative numbering
set relativenumber
set number

" Highlight the right column
execute "set colorcolumn=" . join(range(81,512), ',')

" Shortcut to clear highlighting
nnoremap <leader>x noh

" Space for code folding
nnoremap <space> za
vnoremap <space> zf

" 2-space tabs
set shiftwidth=2 tabstop=2 softtabstop=2 smarttab expandtab

" NERDTree
nnoremap <leader>n :NERDTreeToggle<cr>

" Show whitespace characters
set listchars=tab:├─
nnoremap <leader>l :set invlist<cr>

" Shortcut to fix trailing whitespace
nnoremap <leader>s :%s/\s\+$<cr>



" PHP Plugin config
let php_sync_method=0

" Use silver searcher instead of ack when available
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif
