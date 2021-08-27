set bg=dark
colorscheme gruvbox

" Fix for bar cursor in Windows Terminal
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"
