"for styled components
command! -nargs=0 Prettier :CocCommand prettier.formatFile

set tabstop=2           "タブを含むファイルを開いた際, タブを何文字の空白に変換するか
set shiftwidth=2        "自動インデントで入る空白数
set softtabstop=0       "キーボードから入るタブの数

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
