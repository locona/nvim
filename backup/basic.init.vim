"=== Basic Setting
" disable default plugins
" let g:did_install_default_menus = 1
" let g:did_install_syntax_menu   = 1
" let g:did_indent_on             = 1
" let g:did_load_filetypes        = 1
" let g:did_load_ftplugin         = 1
" let g:loaded_2html_plugin       = 1
" let g:loaded_gzip               = 1
" let g:loaded_man                = 1
" let g:loaded_matchit            = 1
" let g:loaded_matchparen         = 1
" let g:loaded_netrwPlugin        = 1
" let g:loaded_remote_plugins     = 1
" let g:loaded_shada_plugin       = 1
" let g:loaded_spellfile_plugin   = 1
" let g:loaded_tarPlugin          = 1
" let g:loaded_tutor_mode_plugin  = 1
" let g:loaded_zipPlugin          = 1
" let g:skip_loading_mswin        = 1

" encoding
set encoding=UTF-8
scriptencoding utf-8

set nobackup
set noswapfile
set noundofile
set autoread

let mapleader = ","     " キーマップリーダー
set number              " 行番号を表示
set title               " 編集中のファイル名を表示
set mouse=a             " 全てのモードで有効
set ambiwidth=double
set showmatch           " 括弧入力時の対応する括弧を表示
set matchtime=1         " カーソルが飛ぶ時間 0.1秒
set ruler               " カーソルの位置表示
set backspace=indent,eol,start "バックスペース使用可能
set nowrap              "折り返ししない
set virtualedit=block

set expandtab           "タブ入力を複数の空hバク入力に置き換える
set smarttab            "新しい行を作った時に高度な自動インデントを行う
"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent          "改行時に前の行のインデントを計測
set smartindent         "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

set hlsearch            "検索結果ハイライト
set pumheight=10        "補完ポップアップの高さ

set re=0                "軽くなるらしい
set statusline=2        "ステータルラインの表示
set synmaxcol=300       "一行でハイライトする文字数
" yank use system clipboard
" set clipboard=unnamed,autoselect
set clipboard+=unnamed
set visualbell
set visualbell t_vb=
set noerrorbells

" set imdisable " Neovim では非サポート (MacVim専用)
" スワップファイルファイルの設定(Readonly)
augroup swapchoice-readonly
  autocmd!
  autocmd SwapExists * let v:swapchoice = 'o'
augroup END

" 行末の余分なスペース削除
autocmd BufWritePre * :%s/\s\+$//ge
autocmd BufEnter * if &ft !~ '^nerdtree$' | silent! cd %:p:h | endif

"カレンドディレクトリ設定(自動的に開いたファイルのディレクトリに移動)
if exists('+autochdir')
  set autochdir
endif


" set verbosefile=/tmp/vim.log
" set verbose=20
