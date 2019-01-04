set nocompatible
filetype plugin indent on

source $HOME/.vim/vimrc/plugins.vim
source $HOME/.vim/vimrc/plugin_configs.vim
source $HOME/.vim/vimrc/settings.vim
source $HOME/.vim/vimrc/misc.vim
source $HOME/.vim/vimrc/looks.vim
source $HOME/.vim/vimrc/mappings.vim

" Source a local vimrc if it exists
if filereadable(expand("$HOME/.vimrc.local"))
  source $HOME/.vimrc.local
endif
