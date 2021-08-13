" Keybindings
let mapleader=" "
let maplocalleader=","

nnoremap <C-w> :call CloseSplitedOrBuffer()<CR>
nnoremap <Tab> :bnext<cr>
nnoremap <C-s> :w<cr>
inoremap jj <ESC>
inoremap kk <ESC>
nnoremap <S-Tab> :bprev<cr>
inoremap <C-s> <ESC>:w<cr>
inoremap <C-e> <ESC> <S-$>a
nnoremap <C-d> yyp

" open
nnoremap <leader>oe :NERDTreeToggle<CR> 
nnoremap <leader>ob :Telescope buffers<CR> 
nnoremap <C-b> :NERDTreeToggle<CR>

" window
nnoremap <leader>w/ :vsplit<cr>
nnoremap <leader>w- :split<cr>
nnoremap <leader>wh :wincmd h<cr>
nnoremap <leader>wj :wincmd j<cr>
nnoremap <leader>wk :wincmd k<cr>
nnoremap <leader>wl :wincmd l<cr>
" nnoremap <silent> <C-v> :vertical resize +10<CR>
" nnoremap <silent> <S-v> :vertical resize -10<CR>

" search keybindings [s]
nnoremap <leader>sp <cmd>Telescope live_grep theme=get_dropdown prompt_prefix=🔍<cr>
nnoremap <leader>sf :Telescope find_files prompt_prefix=🔍<cr>

" vim helpers
map <C-F9> :source ~/.config/nvim/init.vim <cr>
map <C-F12> :PlugInstall<CR>
map <C-F11> :PlugUpdate<CR>
map <C-F10> :PlugUpgrade<CR>

" completion
nnoremap <S-k> :call <SID>show_documentation()<CR>
nmap gh <Plug>(coc-diagnostic-next)
nmap gd <Plug>(coc-definition)
nmap gi <Plug>(coc-implementation) 
nmap gr <Plug>(coc-references)
nmap <leader>. <Plug>(coc-codeaction)
nmap <leader>d :<C-u>CocList diagnostics<cr>
nmap <leader>rn <Plug>(coc-rename)

" Use <Tab> and <S-Tab> to navigate through popup menu
" imap <silent> <c-space> <Plug>(completion_trigger)
imap <silent> <expr> <c-@> teste

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:completion_confirm_key = ""
imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
                 \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"

" config search  needs ripgrep installed
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] "Hide files in .gitignore
let g:ctrlp_show_hidden = 1

" move line
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

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
