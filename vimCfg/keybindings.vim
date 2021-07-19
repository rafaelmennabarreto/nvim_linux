" Keybindings
let mapleader=" "
let maplocalleader=","

nnoremap <C-s> :w<cr>
inoremap jj <ESC>
inoremap kk <ESC>
nnoremap <C-w> :call CloseSplitedOrBuffer()<CR>
nnoremap <Tab> :bnext<cr>
nnoremap <S-Tab> :bprev<cr>
nnoremap <silent> <C-v> :vertical resize +10<CR>
nnoremap <silent> <S-v> :vertical resize -10<CR>
inoremap <C-s> <ESC>:w<cr>
inoremap <C-e> <ESC> <S-$>a

" Project
nnoremap <leader>pt :CocCommand explorer --position right --width 50 --quit-on-open<CR>
nnoremap <C-b> :CocCommand explorer --position right --width 50 --quit-on-open<CR>
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

" Use <Tab> and <S-Tab> to navigate through popup menu
imap <silent> <c-space> <Plug>(completion_trigger)
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:completion_confirm_key = ""
imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
                 \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"

" Person Function
function CloseSplitedOrBuffer()
  try
    execute ':clo'
  catch
     execute ':bdelete'
  endtry	
endfunction
