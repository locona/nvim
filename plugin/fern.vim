let g:fern#disable_default_mappings = 1


nnoremap <C-e> :<C-u>Fern . -drawer -width=40 -toggle -reveal=%<CR>

function! s:init_fern() abort
  " Use 'select' instead of 'edit' for default 'open' action
  " nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END
