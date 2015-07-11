set nocompatible

"--------------
" Load pathogen
"--------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on " enable file type detection

colorscheme desert
syntax on

set guifont=Consolas:h12
set nowrap

"---------------------
" Indentation settings
"---------------------
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

"---------------------
" Folding settings
"---------------------
set foldmethod=indent   " fold based on indent
set foldnestmax=3       " deepest fold is 3 levels
set nofoldenable        " dont fold by default

set wildmode=list:longest   " make cmdline tab completion similar to bash
set wildmenu                " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ " stuff to ignore when tab completing

" Add line numbers
set number

" Hide buffers when not displayed
set hidden

" Show trailing whitespace:
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Mark syntax errors with :signs
let g:syntastic_enable_signs=1
let g:loaded_cucumber_syntax_checker=1

" Turn off needless toolbar on gvim/mvim
set guioptions-=T

set noantialias

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

au BufRead,BufNewFile *.hamlc set ft=haml
