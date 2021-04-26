 " plugins
call plug#begin('~/.config/nvim/plugged')
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'mhinz/vim-startify'
  Plug 'sheerun/vim-polyglot'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-commentary'
  Plug 'phanviet/vim-monokai-pro'
  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-surround'
  Plug 'jesseleite/vim-noh'
  Plug 'ryanoasis/vim-devicons'
  " telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  " whichkey
  Plug 'liuchengxu/vim-which-key'
call plug#end()


