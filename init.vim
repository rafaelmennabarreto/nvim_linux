 if !exists('g:vscode')
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
  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-commentary'
  Plug 'phanviet/vim-monokai-pro'
  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-surround'
  Plug 'jesseleite/vim-noh'
  call plug#end()

  "Theme
  colorscheme gruvbox
  set background=dark

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

  "control space open autocomplete
  if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
  else
    inoremap <silent><expr> <c-@> coc#refresh()
  endif

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
  nmap <leader>. <Plug>(coc-codeaction)
    
  " Apply AutoFix to problem on the current line.
  nmap <leader>qf  <Plug>(coc-fix-current)


  " Keybindings
  nnoremap <C-s> :w<cr>
  inoremap jj <ESC>
  inoremap kk <ESC>
  nnoremap <C-w> :call CloseSplitedOrBuffer()<CR>
  nnoremap <Tab> :bnext<cr>
  nnoremap <S-Tab> :bprev<cr>
  nnoremap <silent> <C-v> :vertical resize +10<CR>
  nnoremap <silent> <S-v> :vertical resize -10<CR>
  nnoremap <leader>e :CocCommand explorer --quit-on-open<CR>
  nnoremap <leader>p :Files<cr>
  nnoremap <leader>wv :vsplit<cr>
  nnoremap <leader>h :wincmd h<cr>
  nnoremap <leader>j :wincmd j<cr>
  nnoremap <leader>k :wincmd k<cr>
  nnoremap <leader>l :wincmd l<cr>
  inoremap <C-s> <ESC>:w<cr>
  inoremap <C-e> <ESC> <S-$>a

  " Person Function
  function CloseSplitedOrBuffer()
    try
      execute ':clo'
    catch
       execute ':bdelete'
    endtry	
  endfunction
else
  source ~/.config/nvim/vsCode/vsInit.vim
endif

