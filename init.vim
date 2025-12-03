runtime macmap.vim
runtime basic.init.vim
runtime keymap.init.vim
runtime color.init.vim

packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'https://github.com/dense-analysis/ale'

Jetpack 'neovim/nvim-lspconfig'
" Jetpack 'junegunn/fzf.vim'
" Jetpack 'neoclide/coc.nvim', {'branch': 'release'}
Jetpack 'vlime/vlime', { 'rtp': 'vim' }
Jetpack 'dracula/vim', { 'as': 'dracula' }

Jetpack 'ctrlpvim/ctrlp.vim'
Jetpack 'mattn/ctrlp-matchfuzzy'

" テーマ
Jetpack 'tanvirtin/monokai.nvim'

" ファイルツリー
Jetpack 'scrooloose/nerdtree'

" コメントアウト
Jetpack 'numToStr/Comment.nvim'
Jetpack 'nvim-treesitter/nvim-treesitter'
Jetpack 'nvim-treesitter/nvim-treesitter-textobjects'
Jetpack 'JoosepAlviste/nvim-ts-context-commentstring'
" カッコ
" ys/ds/cs
Jetpack 'kylechui/nvim-surround'
Jetpack 'windwp/nvim-autopairs'

" pain 移動
Jetpack 'christoomey/vim-tmux-navigator'

" ステータス
Jetpack 'vim-airline/vim-airline'
Jetpack 'vim-airline/vim-airline-themes'

" インデント
" Jetpack 'lukas-reineke/indent-blankline.nvim'

" リピート (.)
Jetpack 'tpope/vim-repeat'

" Github Copilot
Jetpack 'github/copilot.vim'

" color code
Jetpack 'norcalli/nvim-colorizer.lua'

" Flutter
Jetpack 'dart-lang/dart-vim-plugin', { 'for': 'dart' }
Jetpack 'thosakwe/vim-flutter', { 'for': 'dart' }

" Graphql
Jetpack 'jparise/vim-graphql'

call jetpack#end()

runtime plugin/nerdtree.vim
runtime plugin/fzf.vim
runtime plugin/nvim-surround.vim
runtime plugin/nvim-autopairs.vim
runtime plugin/nvim-treesitter.vim
runtime plugin/comment.vim

lua << EOF
require('monokai').setup {}

require('colorizer').setup {
  '*'; -- Highlight all files, but customize some others.
}
EOF

