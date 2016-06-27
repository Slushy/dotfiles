" VIM SETTINGS TAKEN FROM DREW - BEFORE COMMIT REARRANGE AND ORGANIZE
" ==================================================================

" Use vim settings
set nocompatible

" ------------- PLUGINS -------------
" ====================================
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'

call plug#end()


" ------------- GENERAL CONFIG -------------
" ==========================================
set autoread				" Automatically reload a file when it's changed
set backspace=indent,eol,start		" Make backspace work normally in insert mode
set mouse=nvicr						" Set up mouse options: normal, visual, insert, command-line, hit-enter prompt
set showmode						" Show the mode at the bottom
set relativenumber

" ------------- COMMON CONFIG -------------
" =========================================
set history=1000					
set nowrap			" Don't wrap lines
set linebreak		" Wrap lines at convenient points
set textwidth=120	" Max width of text should be 120 characters

" j and k should move with word-wraps
nnoremap j gj
nnoremap k gk

" Turn on syntax highlighting
syntax on

" ------------- INDENTATION -------------
" =======================================
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" ------------- SEARCH -------------
" ==================================
set incsearch
set hlsearch
set ignorecase
set smartcase

" Easier split navigation

" Use <ctrl-w> [hjkl] to select the active split
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" Find a file
" TODO: FIX THIS
" FIX TODO COLOR!!!!!
nnoremap \e :Explore<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" ------------- CUSTOM SETTINGS -------------
" ===========================================
source ~/dotfiles/vim/settings.vim

