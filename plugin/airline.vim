let g:airline_theme = 'molokai'
set ttimeoutlen=50
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
" let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline_extensions = []
" let g:airline#extensions#ale#error_symbol = ' '
" let g:airline#extensions#ale#warning_symbol = ' '
" let g:airline#extensions#default#section_truncate_width = {}
" let g:airline#extensions#whitespace#enabled = 1


" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
