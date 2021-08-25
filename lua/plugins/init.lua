-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
-- require('plugins.bufferLine')
-- require('plugins.statusline')
-- require('plugins.Lsp')

vim.cmd [[packadd packer.nvim]]

-- -- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

local startup = require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- One Dark
  use 'joshdick/onedark.vim'

  -- DashBoard
  use 'glepnir/dashboard-nvim'

  -- using packer.nvim
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  -- Coc
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  -- galaxyline
  use {
    'glepnir/galaxyline.nvim',
      branch = 'main',
      -- your statusline
      -- config = function() require'plugins.statusline' end,
      -- some optional icons
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
  }

end)

-- import modules
require('plugins.bufferLine')
require('plugins.statusline')
require('plugin.Coc')

return startup
