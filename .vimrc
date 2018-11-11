" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins to install
Plugin 'gmarik/Vundle.vim'

" Generic
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'ntpeters/vim-better-whitespace'

" LaTex
Plugin 'vim-latex/vim-latex'

" C/C++
Plugin 'vim-scripts/DoxygenToolkit.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'charz/multi-cscope-db'
"Plugin 'rhysd/vim-clang-format'

" ASM
Plugin 'Shirk/vim-gas'

" Python
Plugin 'nvie/vim-flake8'
Plugin 'hynek/vim-python-pep8-indent'

" Golang
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on
syntax enable

"set ttyfast
set ttyscroll=999

" Fonts
set guifont=Ubuntu\ Mono\ Regular\ 11
"set guifont=Source\ Code\ Pro\ Medium\ 8
set antialias

" Basic VIM Options
set guioptions=aegit
set nu
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set backspace=2
set scrolloff=8

" Colorscheme
colorscheme jellybeans_modified

" File Types
autocmd BufRead,BufNewFile *.ino set filetype=cpp
autocmd BufRead,BufNewFile *.go set filetype=go

" File Options
autocmd BufRead,BufNewFile *.h TagbarClose
autocmd Filetype markdown set spell spelllang=en_us
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType c,cpp,go TagbarOpen
autocmd Filetype html,c,cpp,go set colorcolumn=80
