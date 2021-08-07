 " plugins
call plug#begin('~/.config/nvim/plugged')
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'mhinz/vim-startify'
  Plug 'sheerun/vim-polyglot'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'jesseleite/vim-noh'
  Plug 'preservim/nerdtree'
  Plug 'nvim-lua/completion-nvim'

   " themes
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'morhetz/gruvbox'
  Plug 'ryanoasis/vim-devicons'
  Plug 'phanviet/vim-monokai-pro'
  Plug 'kyazdani42/nvim-web-devicons'

   " telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " whichkey
  Plug 'liuchengxu/vim-which-key'
call plug#end()


