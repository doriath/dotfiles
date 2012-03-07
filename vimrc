set nocompatible               " be iMproved
filetype on
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
"
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-haml'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-ruby/vim-ruby'
Bundle 'ervandew/supertab'
Bundle 'rails.vim'
Bundle 'bufexplorer.zip'
Bundle 'vividchalk.vim'
Bundle 'Command-T'
Bundle 'ack.vim'
Bundle 'kchmck/vim-coffee-script'
" ...

filetype plugin indent on     " required!

" My Config here:
" let g:CSApprox_verbose_level = 0
" let g:autoclose_on = 0
" source ~/.vim/vimrc
set nowrap
colorscheme desert
syntax on
" map <leader>t :CommandT<CR>
set guifont=Consolas:h12
set expandtab

" Show trailing whitespace:
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

set number      "add line numbers

"hide buffers when not displayed
set hidden

"key mapping for vimgrep result navigation
map <A-o> :copen<CR>
map <A-q> :cclose<CR>
map <C-j> :cnext<CR>
map <C-k> :cprevious<CR>

map <leader>r :CommandTBuffer<CR>

" NERDTree mapping
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"mark syntax errors with :signs
let g:syntastic_enable_signs=1
let g:loaded_cucumber_syntax_checker=1

"turn off needless toolbar on gvim/mvim
set guioptions-=T

" Command-T settings
let g:CommandTMatchWindowAtTop=1

set noantialias

set wildignore+=doc/app
set wildignore+=tmp
set wildignore+=spec/reports
set wildignore+=features/reports
set wildignore+=coverage

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
