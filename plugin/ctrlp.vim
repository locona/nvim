" Config
"-----------------------------------------------
" let g:ctrlp_clear_cache_on_exit = 0   " 終了時キャッシュをクリアしない
" let g:ctrlp_mruf_max            = 100 " MRUの最大記録数
" let g:ctrlp_open_new_file       = 1   " 新規ファイル作成時にタブで開く
" let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png
let g:ctrlp_match_func = {'match': 'ctrlp_matchfuzzy#matcher'}
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" let g:ctrlp_custom_ignore = '\v[\/]\.(vendor)$'
let g:ctrlp_custom_ignore = '\v[\/]\.(node_modules|build|vendor/bin)$'
" Keybind
"-----------------------------------------------
nnoremap s <Nop>
nnoremap sa :<C-u>CtrlP<Space>
nnoremap sb :<C-u>CtrlPBuffer<CR>
nnoremap sd :<C-u>CtrlPDir<CR>
nnoremap sf :<C-u>CtrlP<CR>
nnoremap sl :<C-u>CtrlPLine<CR>
nnoremap sm :<C-u>CtrlPMRUFiles<CR>
nnoremap sq :<C-u>CtrlPQuickfix<CR>
nnoremap ss :<C-u>CtrlPMixed<CR>
nnoremap sc :<C-u>CtrlPClearAllCaches<CR>
