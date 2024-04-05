runtime basic.init.vim
runtime keymap.init.vim
runtime color.init.vim
runtime mac.init.vim

set background=light

term "screen-256color"

packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'https://github.com/dense-analysis/ale'
Jetpack 'junegunn/fzf.vim'
Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'neoclide/coc.nvim', { 'branch': 'release' }
Jetpack 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Jetpack 'vlime/vlime', { 'rtp': 'vim' }
Jetpack 'dracula/vim', { 'as': 'dracula' }

" テーマ
Jetpack 'tomasr/molokai'

" ファイルツリー Jetpack 'lambdalisue/fern.vim'
"Jetpack 'lambdalisue/fern-git-status.vim'
Jetpack 'scrooloose/nerdtree'

" コメントアウト
Jetpack 'numToStr/Comment.nvim'
Jetpack 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
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
Jetpack 'echasnovski/mini.nvim'
Jetpack 'echasnovski/mini.indentscope'

" リピート (.)
Jetpack 'tpope/vim-repeat'


call jetpack#end()


runtime plugin/nerdtree.vim
runtime plugin/fzf.vim
runtime plugin/comment.vim
runtime plugin/nvim-surround.vim
runtime plugin/nvim-autopairs.vim
runtime plugin/mini.vim
