" let g:neocomplete#enable_at_startup=0

set noexpandtab
set tabstop=8
set shiftwidth=8

" function! s:gofmt_on_save()
  " let l:curw = winsaveview()
  " silent execute "0,$! gofmt"
  " try | silent undojoin | catch | endtry
  " call winrestview(l:curw)
" endfunction
"
" augroup vim-gofmt-autosave
  " autocmd!
  " autocmd BufWritePre *.go call s:gofmt_on_save()
" augroup END
