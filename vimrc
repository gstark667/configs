filetype plugin on
syntax on

filetype indent off
set ff=unix

set backspace=indent,eol,start
set nocompatible

set showcmd

set mouse=
set ttymouse=

set number

"call vundle#begin()

"Plugin 'VundleVim/Vundle.vim'
"Plugin 'Chiel92/vim-autoformat'

"call vundle#end()

map <C-n> :NERDTreeToggle<CR>
map <C-m> :bel term ++rows=10<CR>
map <C-t> :TagbarToggle<CR>
map <F3> :Autoformat<CR>
"autocmd VimEnter * NERDTree
