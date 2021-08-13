" files import
source ~/AppData/Local/nvim/autoload/plug.vim

 "Theme
colorscheme gruvbox
set background=dark

" editor config
highlight clear SignColumn
highlight clear LineNr

set number relativenumber
set t_Co=256
set nobackup
set clipboard=unnamedplus
set nowritebackup
set cursorline
set smartindent
set autoindent
set smarttab
set splitbelow
set splitright
set scrolloff=8
set hidden
set nowrap!
" set completeopt=menuone,noinsert,noselect

let g:deoplete#enable_at_startup = 1
let g:completion_confirm_key = ""

let g:python_host_prog='C:/Python27/python'
let g:python3_host_prog='C:/Python39/python'
