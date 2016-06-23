" Plugins ...

" call plug#begin('~/.config/nvim/plugged')

" Plug 'scrooloose/nerdtree'

" call plug#end()

set tabstop=4


" Easier split navigation

" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

