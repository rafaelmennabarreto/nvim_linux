source ~/.config/nvim/vimCfg/plugCfg.vim
source ~/.config/nvim/vimCfg/general.vim
source ~/.config/nvim/vimCfg/airlinesCfg.vim

if !exists('g:vscode')
  source ~/.config/nvim/vimCfg/keybindings.vim
else
  source ~/.config/nvim/vsCode/vsInit.vim
endif

source ~/.config/nvim/vimCfg/cocConfig.vim
source ~/.config/nvim/vimCfg/whichkey.vim
