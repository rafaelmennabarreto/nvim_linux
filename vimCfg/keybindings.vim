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
nnoremap <silent> <C-v> :vertical resize +10<CR>
nnoremap <silent> <S-v> :vertical resize -10<CR>

" search keybindings [s]
nnoremap <leader>sb :Buffers<cr>
nnoremap <leader>sp <cmd>Telescope live_grep theme=get_dropdown prompt_prefix=🔍<cr>

" vim helpers
map <C-F9> :source ~/.config/nvim/init.vim <cr>
map <C-F12> :PlugInstall<CR>
map <C-F11> :PlugUpdate<CR>
map <C-F10> :PlugUpgrade<CR>

" completion
nnoremap <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <S-k> <Cmd>Lspsaga hover_doc<CR>
nnoremap <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap gh <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap gi <cmd>lua vim.lsp.buf.implementation()<CR> 
nnoremap <leader>. <cmd>lua require('lspsaga.codeaction').code_action()<CR> 
nnoremap <leader>d <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>rn :Lspsaga rename<CR>

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
