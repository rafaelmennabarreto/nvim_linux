" files import
source ~/.config/nvim/autoload/plug.vim

" plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
call plug#end()

" editor config
highlight clear SignColumn
highlight clear LineNr

set number relativenumber
set t_Co=256
set nobackup
set clipboard=unnamed
set nowritebackup
set cursorline
set smartindent
set autoindent
set smarttab
set splitbelow
set splitright
set scrolloff=8
let mapleader=" "

"Airlines config
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1

" Coc config -----------------
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" code action
nmap <leader>ac <Plug>(coc-codeaction)
	
" Keybindings
nnoremap <C-s> :w<cr>
nnoremap <C-q> :q<cr>
inoremap jj <ESC>
inoremap kk <ESC>
nnoremap <C-w> :call CloseSplitedOrBuffer()<CR>
nnoremap <Tab> gt
nnoremap <Tab> :bnext<cr>
nnoremap <S-Tab> <C-o>
nnoremap <silent> <C-v> :vertical resize +10<CR>
nnoremap <silent> <C-S-v> :vertical resize -10<CR>
nnoremap <leader>e :CocCommand explorer --quit-on-open<CR>
nnoremap <leader>p :Files<cr>
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
inoremap <C-s> <ESC>:w<cr>

" Person Function
function CloseSplitedOrBuffer()
	try
	  execute ':clo'
	catch
	   execute ':bdelete'
	endtry	
endfunction

