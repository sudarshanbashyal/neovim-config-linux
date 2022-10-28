" type defintion preview
map <silent> <C-p> :call CocActionAsync('doHover') <CR>

" auto-refresh nerdtree on focus
map <C-n> :NERDTreeFocus<CR>

" Normal keybindings
inoremap kj <Esc>
inoremap KJ <Esc>
nmap <F2> <Plug>(coc-rename)

" fzf file/text search
nnoremap <leader>ff <cmd>Files<cr>
nnoremap <leader>fs <cmd>Rg<cr>

" Indentation/Tabs
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
nnoremap <S-Tab> <<
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" Indenting during selection mode
vmap <Tab> >gv
vmap <S-Tab> <gv

" floating terminal
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

" toggle between relative and no relative
nnoremap   <silent>   <F10>   :call ToggleRelative()<CR>
function! ToggleRelative()
      if(&relativenumber==1)
				set norelativenumber
      else
				set relativenumber
    endif
endfunction

"Switching splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" change scroll speed
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
