-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`

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

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'

  -- complete
  use 'hrsh7th/nvim-compe'

  -- galaxyline
  use {
    'glepnir/galaxyline.nvim',
      branch = 'main',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Icons
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
  }

end)

require('plugins.bufferLine')
require('plugins.statusline')
require('plugins.Lsp')
require('plugins.compe')

return startup