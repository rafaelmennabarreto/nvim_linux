if exists('g:vscode')
  source ~/.config/nvim/vsCode/vsInit.vim
else
  source ~/.config/nvim/vimCfg/plugCfg.vim
  source ~/.config/nvim/vimCfg/general.vim
  source ~/.config/nvim/vimCfg/airlinesCfg.vim
  source ~/.config/nvim/vimCfg/keybindings.vim
  source ~/.config/nvim/vimCfg/cocConfig.vim
  source ~/.config/nvim/vimCfg/whichkey.vim
endif

