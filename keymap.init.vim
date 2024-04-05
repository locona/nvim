"=== KEYBIND VIM-EDITOR (NOT PLUGIN KEYBIND)

" PrefixKey
" nnoremap <Space>r :source ~/.vimrc<Enter>
nnoremap <Space>- :syntax on<Enter>

"====== NORMAL
nnoremap q: :q
nnoremap <Space>: :q<Enter> "====== NORMAL + VISUAL
map <C-c> <ESC>
noremap <Space>1 <ESC>
noremap <Space>h ^
noremap <Space>l $
noremap <Space>w :split<Enter>
noremap <Space>q :vsplit<Enter>
noremap <Space>sh <C-w>h           "画面移動: 左
noremap <Space>sl <C-w>l           "画面移動: 右
noremap <Space>sk <C-w>k           "画面移動: 上
noremap <Space>sj <C-w>j           "画面移動: 下
noremap <Space>' <C-w><"横幅変更"
noremap <Space>; <C-w>>"横幅変更"
noremap <Space>, <C-w>+"縦幅変更"
noremap <Space>. <C-w>-"縦幅変更"
noremap <Space>= <C-w>="サイズ統一"
noremap <ESC><ESC> :noh<CR>
noremap j gj
noremap k gk
noremap gj j
noremap gk k
noremap st :tabnew<CR>
noremap sp gt
noremap sn gT
noremap ; :
noremap : ;

"---------------change insert by ja----------------------
" imap <C-j> <CR>
inoremap <silent>jj <ESC>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-b> <Left>
inoremap <C-l> <Right>
inoremap <C-f> <Right>
inoremap <C-u> <BackSpace>
inoremap <C-o> <C-o>o
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
inoremap <C-y> <nop>
inoremap ; :
inoremap : ;

vnoremap ; :
vnoremap : ;

" vnoremap <silent> p "0p
"----------- auto brackets ----------
inoremap <ESC> <ESC>:set iminsert=0<CR>

"=== MacVim
"==========================
"Tab移動
nnoremap <C-t> gt<Enter>
"====== INSERT

" ripgrep
nnoremap <C-g> :Rg<Space>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
  \   <bang>0)


inoremap <ESC> <ESC>:set iminsert=0<CR>
