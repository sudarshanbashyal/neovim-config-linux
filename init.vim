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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'pantharshit00/vim-prisma'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi'
Plug 'nvim-lua/plenary.nvim' 
Plug 'ThePrimeagen/harpoon'
Plug 'lewis6991/gitsigns.nvim'
Plug 'preservim/tagbar'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'EdenEast/nightfox.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'ThePrimeagen/vim-be-good'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'APZelos/blamer.nvim'
call plug#end()

luafile $HOME/.config/nvim/plug-config/treesitter.lua
source $HOME/.config/nvim/plug-config/harpoon.vim
source $HOME/.config/nvim/plug-config/general.vim
source $HOME/.config/nvim/plug-config/keybinds.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/multicursor.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/tagbar.vim
source $HOME/.config/nvim/plug-config/blamer.vim
luafile $HOME/.config/nvim/plug-config/gitsigns.lua
luafile $HOME/.config/nvim/plug-config/lualine.lua
" source $HOME/.config/nvim/plug-config/signify.vim
" source $HOME/.config/nvim/plug-config/go-lc.vim

" coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction	
																									
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
