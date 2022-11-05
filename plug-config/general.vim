set number
set relativenumber
set nowrap
set formatoptions-=t
set cursorline
set ignorecase 
set scrolloff=20
set clipboard=unnamedplus
set scroll=10

" themes and stuff
syntax enable
set background=dark
set termguicolors
colorscheme nightfox
let g:lightline = { 'colorscheme': 'nightfox' }
let g:NERDTreeWinSize=40

" nerd tree
let NERDTreeShowHidden=1

" stop the cursor from jumping on buffer writes and saves
let g:syntastic_auto_jump = 0
