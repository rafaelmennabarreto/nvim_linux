local map = vim.api.nvim_set_keymap

-- leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables

options = { noremap = true }

-- Keybindings
map('i', 'jj', '<ESC>', options)
map('i', 'kk', '<ESC>', options)
map('i', 'kk', '<ESC>', options)
map('i', '<C-s>', '<ESC>:w<cr>', options)
map('i', '<C-e>', '<ESC> <S-$>a', options)

map('n', '<C-s>', '<ESC>:w<cr>', options)
map('n', '<C-w>', ':bd<CR>', options)
map('n', '<C-v>', ':vertical resize +10<CR>', options)
map('n', '<S-v>', ':vertical resize -10<CR>', options)
map('n', '<Tab>', ':bnext<cr>', options)
map('n', '<S-Tab>', ':bprev<cr>', options)

-- Project
map('n', '<leader>pt', ':CocCommand explorer --position right --width 50 --quit-on-open<CR>', options)
map('n', '<C-b>', ':CocCommand explorer --position right --width 50 --quit-on-open<CR>', options)
map('n', '<leader>pf', ':Telescope find_files prompt_prefix=🔍<cr>', options)

-- window
map('n', '<leader>w/', ':vsplit<cr>', options)
map('n', '<leader>w-', ':split<cr>', options)
map('n', '<leader>wh', ':wincmd h<cr>', options)
map('n', '<leader>wj', ':wincmd j<cr>', options)
map('n', '<leader>wk', ':wincmd k<cr>', options)
map('n', '<leader>wl', ':wincmd l<cr>', options)

-- search keybindings [s]
map('n', '<leader>sb', ':Buffers<cr>', options)
map('n', '<leader>sp', '<cmd>Telescope live_grep theme=get_dropdown prompt_prefix=🔍<cr>', options)

-- diagnostic keybindings
map('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', options)
map('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', options)
map('n', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', options)
map('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', options)
map('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', options)
