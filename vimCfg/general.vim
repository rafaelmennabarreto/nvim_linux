" files import
source ~/.config/nvim/autoload/plug.vim

 "Theme
colorscheme gruvbox
set background=dark

" editor config
highlight clear SignColumn
highlight clear LineNr

set number relativenumber
set t_Co=256
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set clipboard=unnamedplus
set cursorline
set smartindent
set autoindent
set smarttab
set splitbelow
set splitright
set scrolloff=8
set hidden
set nowrap!
set completeopt=menuone,noinsert,noselect

let g:completion_confirm_key = ""

" config search  needs ripgrep installed
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] "Hide files in .gitignore
let g:ctrlp_show_hidden = 1    

if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
