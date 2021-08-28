vim.g.mapleader = " "
vim.g.completion_confirm_key = ""
vim.g.ctrlp_show_hidden = 1

function map(mode, key, command, opt)
  vim.api.nvim_set_keymap(mode, key, command, opt)
end

local opt = {silent = true}
local optNoremap = { silent = true, noremap = true }

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

-- " move line
map('v','J', ":m '>+1<CR>gv=gv",opt)
map('v','K', ":m '<-2<CR>gv=gv",opt)
map('i','<C-j>', '<esc>:m .+1<CR>==',opt)
map('i','<C-k>', '<esc>:m .-2<CR>==',opt)
map('n','<Leader>j', ':m .+1<CR>==',opt)
map('n','<Leader>k', ':m .-2<CR>==',opt)

-- Completion
map('i','<C-Space>', 'compe#complete()', { expr = true, noremap = true, silent = true, })
map('i','<CR>', "compe#confirm({ 'keys': '<CR>', 'select': v:true })", { expr = true, noremap = true, silent = true, })
map('i','<C-e>', "compe#close('<C-e>')", { expr = true, noremap = true, silent = true, })
map('i','<C-d>', 'compe#scroll({ "delta": -4 })', { expr = true, noremap = true, silent = true, })
map('i','<C-f>', "compe#scroll({ 'delta': +4 })", { expr = true, noremap = true, silent = true, })

map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- tab move completion functions
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn['vsnip#available'](1) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn['vsnip#jumpable'](-1) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

