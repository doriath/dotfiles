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

" Turn off needless toolbar on gvim/mvim
set guioptions-=T

set noantialias

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" Write .swp files into ~/.vim/cache
set dir=~/.vim/cache//

" Relative line numbers
set relativenumber
