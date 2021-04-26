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
nnoremap <leader>e :CocCommand explorer --preset floating --quit-on-open<CR>
nnoremap <leader>p :Telescope find_files  theme=get_dropdown prompt_prefix=🔍<cr>
nnoremap <leader>f <cmd>Telescope live_grep<cr>
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>wh :split<cr>
" window
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>

" search keybindings [s]
nnoremap <leader>sb :Buffers<cr>
nnoremap <leader>sf :Files<cr>

" vim helpers
map <C-F9> :source ~/.config/nvim/init.vim <cr>
map <C-F12> :PlugInstall<CR>
map <C-F11> :PlugUpdate<CR>
map <C-F10> :PlugUpgrade<CR>


" Person Function
function CloseSplitedOrBuffer()
  try
    execute ':clo'
  catch
     execute ':bdelete'
  endtry	
endfunction
