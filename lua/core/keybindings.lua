vim.g.mapleader = " "
vim.g.completion_confirm_key = ""
vim.g.ctrlp_show_hidden = 1

function map(mode, key, command, opt)
  vim.api.nvim_set_keymap(mode, key, command, opt)
end

local opt = {silent = true}

map('n', '<C-w>' , ':bd<cr>', opt)
map('n', '<C-s>' , ':w<cr>', opt)
map('i', '<C-s>' , '<esc>:w<cr>', opt)
map('n', '<Tab>' , ':bn<cr>', opt)
map('n', '<S-Tab>' , ':bp<cr>', opt)

map('i', 'jj' , '<Esc>', opt)
map('i', 'kk' , '<Esc>', opt)
map('i', '<C-e>' , '<Esc> <S-$>a', opt)

-- Open
map('n', '<Leader>oe', ':NvimTreeToggle<cr>', opt)
map('n', '<leader>ob', ':Telescope buffers<cr>', opt)
map('n', '<C-b>', ':NvimTreeToggle<cr>', opt)

-- Window
map('n', '<Leader>w/', ':vsplit<cr>', opt)
map('n', '<Leader>w-', ':split<cr>', opt)
map('n', '<Leader>wh', ':wincmd h<cr>', opt)
map('n', '<Leader>wj', ':wincmd j<cr>', opt)
map('n', '<Leader>wk', ':wincmd k<cr>', opt)
map('n', '<Leader>wl', ':wincmd l<cr>', opt)
map('n', '<C-h>', ':vertical resize +10<CR>', opt)
map('n', '<C-l>', ':vertical resize -10<CR>', opt)

-- Search keybindings
map('n', '<leader>sp', '<cmd>Telescope live_grep theme=get_dropdown prompt_prefix=🔍<cr>', opt)
map('n', '<leader>sf', ':Telescope find_files prompt_prefix=🔍<cr>', opt)

-- Tab navigate completion
-- map('i','<expr> <Tab>', 'pumvisible() ? "\<C-n>" : "\<Tab>"',opt)
-- map('i','<expr> <S-Tab>', 'pumvisible() ? "\<C-p>" : "\<S-Tab>"',opt)

-- " move line
map('v','J', ":m '>+1<CR>gv=gv",opt)
map('v','K', ":m '<-2<CR>gv=gv",opt)
map('i','<C-j>', '<esc>:m .+1<CR>==',opt)
map('i','<C-k>', '<esc>:m .-2<CR>==',opt)
map('n','<Leader>j', ':m .+1<CR>==',opt)
map('n','<Leader>k', ':m .-2<CR>==',opt)

-- " vim helpers
-- map <C-F9> :source ~/.config/nvim/init.vim <cr>
-- map <C-F12> :PlugInstall<CR>
-- map <C-F11> :PlugUpdate<CR>
-- map <C-F10> :PlugUpgrade<CR>

-- " completion
-- nnoremap <S-k> :call <SID>show_documentation()<CR>
-- nmap gh <Plug>(coc-diagnostic-next)
-- nmap gd <Plug>(coc-definition)
-- nmap gi <Plug>(coc-implementation) 
-- nmap gr <Plug>(coc-references)
-- nmap <leader>. <Plug>(coc-codeaction)
-- nmap <leader>d :<C-u>CocList diagnostics<cr>
-- nmap <leader>rn <Plug>(coc-rename)
--
-- imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
--                  \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"

-- " config search  needs ripgrep installed
-- let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] "Hide files in .gitignore
-- let g:ctrlp_show_hidden = 1

-- " move line
-- vnoremap J :m '>+1<CR>gv=gv
-- vnoremap K :m '<-2<CR>gv=gv
-- inoremap <C-j> <esc>:m .+1<CR>==
-- inoremap <C-k> <esc>:m .-2<CR>==
-- nnoremap <leader>k :m .-2<CR>==
-- nnoremap <leader>j :m .+1<CR>==
