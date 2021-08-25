set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"もともとVundleだったっぽいけど本読んでpathgenに切り替えた
"Plugin 'VundleVim/Vundle.vim'
execute pathoge#infect()
execute pathogen#helptags()

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
Plugin 'yuratomo/w3m.vim'

call vundle#end()
filetype plugin indent on


"本読んでカスタマイズした。"
"プログラミング健吾に応じたハイライトを有効化"
syntax enable 

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
