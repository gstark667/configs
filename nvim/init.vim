set nocompatible
set noswapfile
filetype plugin on
syntax on

call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
call plug#end()

let g:vimwiki_list = [{'path': '~/Notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

function g:LocalIndex()
  let route=expand("%:h")."/*"
  execute "VimwikiGenerateLinks" . " " . route 
endfun

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:loaded_netrw = 1
let g:loadednetrwPlugin = 1

lua require("nvim-tree").setup({update_focused_file = {enable = true, update_cwd = true}})

nmap <C-n> :NvimTreeToggle<CR>
nmap <leader>w<leader>d :VimwikiGenerateLinks dreams/*.md<CR>
