" Keybindings
let mapleader=" "
let maplocalleader=","

nnoremap <C-s> :w<cr>
inoremap jj <ESC>
inoremap kk <ESC>
nnoremap <C-w> :call CloseSplitedOrBuffer()<CR>
nnoremap <Tab> :bnext<cr>
nnoremap <S-Tab> :bprev<cr>
inoremap <C-s> <ESC>:w<cr>
inoremap <C-e> <ESC> <S-$>a
nnoremap <C-d> yyp

" Project
nnoremap <leader>pt :NERDTreeToggle<CR> 
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <leader>pf :Telescope find_files prompt_prefix=🔍<cr>

" window
nnoremap <leader>w/ :vsplit<cr>
nnoremap <leader>w- :split<cr>
nnoremap <leader>wh :wincmd h<cr>
nnoremap <leader>wj :wincmd j<cr>
nnoremap <leader>wk :wincmd k<cr>
nnoremap <leader>wl :wincmd l<cr>

" search keybindings [s]
nnoremap <leader>sb :Buffers<cr>
nnoremap <leader>sp <cmd>Telescope live_grep theme=get_dropdown prompt_prefix=🔍<cr>

" vim helpers
map <C-F9> :source ~/.config/nvim/init.vim <cr>
map <C-F12> :PlugInstall<CR>
map <C-F11> :PlugUpdate<CR>
map <C-F10> :PlugUpgrade<CR>

" completion
nmap <silent> <C-j> <Plug>(coc-diagnostic-next) 
nnoremap <S-k>:call <SID>show_documentation()<CR>
nmap <silent> gd <Plug>(coc-definition) 
nmap <silent> gi <Plug>(coc-implementation) 
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>. <Plug>(coc-codeaction) 
xmap <leader>. <Plug>(coc-codeaction) 
nmap <leader>d :<C-u>CocList diagnostics<cr> 
nmap <leader>rn <Plug>(coc-rename) 

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" toogle commentary
nnoremap <leader>; :Commentary<cr>
inoremap <leader>; :Commentary<cr>
vnoremap <leader>; :Commentary<cr>

"control space open autocomplete
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <Tab> and <S-Tab> to navigate through popup menu
imap <silent> <c-space> <Plug>(completion_trigger)
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:completion_confirm_key = ""
imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
                 \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"

" autoClose
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap ` ``<left>


" Person Function
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

function CloseSplitedOrBuffer()
  try
    execute ':clo'
  catch
     execute ':bdelete'
  endtry	
endfunction
