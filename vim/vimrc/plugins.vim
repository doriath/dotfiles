" Automatically install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Setup all plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'jlanzarotta/bufexplorer'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

Plug 'leafgarland/typescript-vim'

Plug 'jonsmithers/vim-html-template-literals'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

Plug 'ervandew/supertab'

Plug 'takac/vim-hardtime'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

call plug#end()

call glaive#Install()
