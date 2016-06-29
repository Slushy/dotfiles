" VIM SETTINGS TAKEN FROM DREW - BEFORE COMMIT REARRANGE AND ORGANIZE
" ==================================================================

" Use vim settings
set nocompatible

" ------------- PLUGINS -------------
" ====================================
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'          " Directory browsing
Plug 'scrooloose/syntastic'         " 
Plug 'flazz/vim-colorschemes'       " Vim color schemes
Plug 'kchmck/vim-coffee-script'     " Coffee script syntax/helpful functions
Plug 'ctrlpvim/ctrlp.vim'           " Allows searching by filename
Plug 'ap/vim-css-color'             " Views html colors as their actual colors
Plug 'airblade/vim-gitgutter'       " Shows visuals at each line in a file that is modified
Plug 'itchyny/lightline.vim'        " visual bar at bottom of each file
Plug 'Shougo/deoplete.nvim'         " nvim autocomplete
Plug 'edkolev/tmuxline.vim'         " visual bar at bottom of terminal 

call plug#end()

" ------------- GENERAL CONFIG -------------
" ==========================================
set autoread				" Automatically reload a file when it's changed
set backspace=indent,eol,start		" Make backspace work normally in insert mode
set mouse=nvicr						" Set up mouse options: normal, visual, insert, command-line, hit-enter prompt
set showmode						" Show the mode at the bottom
set number                          " Shows number lines

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

" Use <ctrl-w> [hjkl] to select the active split
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" \e toggles NERDTree, \f shows NERDTree at current file location
nnoremap \e :Explore<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" ------------- CUSTOM SETTINGS -------------
" ===========================================
source ~/dotfiles/vim/settings.vim

