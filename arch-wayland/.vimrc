syntax on


function! CopySelectionToClipboard()
  execute "'<,'>w !wl-copy"
endfunction

xnoremap <silent> <Leader>y :<C-u>silent call CopySelectionToClipboard()<CR>

