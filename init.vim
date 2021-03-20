" files import
source ~/.config/nvim/autoload/plug.vim

" plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" editor config
set clipboard=unnamed
let mapleader=" "

" Keybindings
nnoremap <C-s> :w<cr>
nnoremap <Tab> gt
nnoremap <leader>p :Files<cr>
nnoremap <Tab> :bnext<cr>
nnoremap <S-Tab> <C-o>
nnoremap <C-w> :bd<cr>
nnoremap <leader>e :CocCommand explorer<CR>
inoremap jj <ESC>
inoremap kk <ESC>
inoremap <C-s> <ESC>:w<cr>
