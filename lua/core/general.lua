vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd [[
    let g:onedark_style = 'warm'
    colorscheme onedark
    set background=dark

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
    set encoding=UTF-8
    set termguicolors
    set noshowmode

    let g:completion_confirm_key = ""
]]