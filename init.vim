set number
set relativenumber
set nowrap
set formatoptions-=t
set cursorline
set ignorecase 
set scrolloff=20
set clipboard=unnamedplus
set scroll=10

call plug#begin('~/.config/nvim/plugged')
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'pantharshit00/vim-prisma'
Plug 'tpope/vim-commentary'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'itchyny/lightline.vim'
Plug 'EdenEast/nightfox.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
call plug#end()

" themes and stuff
syntax enable
set background=dark
set termguicolors
colorscheme nightfox
let g:lightline = { 'colorscheme': 'nightfox' }
let g:NERDTreeWinSize=35

" nerd tree
let NERDTreeShowHidden=1

" stop the cursor from jumping on buffer writes and saves
let g:syntastic_auto_jump = 0

" source configs from plug-config dir
luafile $HOME/.config/nvim/plug-config/treesitter.lua
source $HOME/.config/nvim/plug-config/keybinds.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/multicursor.vim
