set number
set relativenumber
set nowrap
set formatoptions-=t
set cursorline
set ignorecase 
set scrolloff=20
set clipboard=unnamedplus
set scroll=10
set signcolumn=number
set foldmethod=marker 

" themes and stuff
syntax enable
set background=dark
set termguicolors
colorscheme kanagawa

let g:lightline = { 'colorscheme': 'pleasant' }
let g:NERDTreeWinSize=40

" nerd tree
let NERDTreeShowHidden=1

" stop the cursor from jumping on buffer writes and saves
let g:syntastic_auto_jump = 0
