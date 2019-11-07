" Automatically install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  if executable("curl")
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  else
    silent !(mkdir -p ~/.vim/autoload/ && wget -qO ~/.vim/autoload/plug.vim
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
  endif
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Setup all plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'jlanzarotta/bufexplorer'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'leafgarland/typescript-vim'

Plug 'jonsmithers/vim-html-template-literals'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

" Plug 'ervandew/supertab'

Plug 'takac/vim-hardtime'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary'

Plug 'markonm/traces.vim'

Plug 'morhetz/gruvbox'

call plug#end()

call glaive#Install()
