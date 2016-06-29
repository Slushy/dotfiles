" map filetypes
au BufNewFile,BufRead *.underscore setlocal filetype=hml

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
