" nnoremap <leader>t <cmd>:call ToggleTagbar()<cr>

function ToggleTagbar()
  execute 'TagbarToggle'
  wincmd l
  echo "Tagbar Toggled"
endfunction
