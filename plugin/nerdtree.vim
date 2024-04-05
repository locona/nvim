let g:NERDSpaceDelims = 1
let g:NERDShutUp = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\~$', '\.sass-cache$', '\.git$']
let g:NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowBookmarks=1

" Keybind
nnoremap ,n :NERDTree .<CR>
nnoremap <silent><C-e> :NERDTreeToggle<CR>
set wildignore+=*.pyc,*.pyo
