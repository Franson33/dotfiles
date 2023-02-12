" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" Use new regular expression engine
set re=0
set number
set cursorline

" Enable type file detection. 
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load an indent file for the detected file type.
filetype indent on

" Enable syntax highlight
syntax on

" Colorscheme
colorscheme monokai


