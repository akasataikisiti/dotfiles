
"もともとVundleだったっぽいけど本読んでpathgenに切り替えた
"Plugin 'VundleVim/Vundle.vim'
execute pathogen#infect()
filetype plugin indent on

"プログラミング健吾に応じたハイライトを有効化"
syntax enable 
" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入


"本読んでカスタマイズした。"

source $VIMRUNTIME/defaults.vim
"#####表示設定##############
set number "行番号を設定する
set title "編集中のファイル名を表示する
set showmatch "『』入力時の対応する括弧を表示
set shiftwidth=2 "自動シフトの幅"
set expandtab "タブのスペース展開"
set tabstop=2 "インデントをスペース４つ分に設定

"##########検索設定############
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する

"##########環境設定################
set vb t_vb=  "ビープ音ならないようにする"

"##########本読んで追加#########
nnoremap <Leader>ev :e ~/dotfiles/.vimrc
nnoremap <Leader>cv :e ~/dotfiles/cheatsheets/vim.txt

"###カラースキーム追加
syntax enable
set background=dark
colorscheme solarized
"set t_Co=256

" syntax enable
" set background=light
" colorscheme solarized
