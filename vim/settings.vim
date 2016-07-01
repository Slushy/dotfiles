" map filetypes
au BufNewFile,BufRead *.underscore setlocal filetype=hml
filetype plugin on

" vim color scheme
colorscheme molokai

" Highlights the current cursorline 
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

" Enables vim autocomplete
let g:deoplete#enable_at_startup=1

" Status bar at the bottom of each terminal
" If update here, must call TmuxlineSnapshot
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : '#(whoami)',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'y'    : ['%l:%M %p', '%a', '%Y'],
      \'z'    : '#H'}

" Status bar at the bottom of each vim file
let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
