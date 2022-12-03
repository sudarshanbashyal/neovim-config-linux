" type defintion preview
map <silent> <C-p> :call CocActionAsync('doHover') <CR>

" Normal keybindings
inoremap kj <Esc>
inoremap KJ <Esc>
nmap <F2> <Plug>(coc-rename)

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
nmap <C-e> <C-w>j
nmap <C-y> <C-w>k
nmap <C-l> <C-w>l

" change scroll speed
" nnoremap <C-e> 2<C-e>
" nnoremap <C-y> 2<C-y>
