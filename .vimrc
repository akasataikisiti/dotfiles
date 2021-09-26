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
set hlsearch  "マッチ箇所をハイライト
"##########環境設定################
set vb t_vb=  "ビープ音ならないようにする"

"##########wildmenuを有効にする（同じ階層のファイルを開く時tab選択ができるようになる。）
set wildmenu
"##########本読んで追加#########
nnoremap <Leader>ev :e ~/dotfiles/.vimrc
nnoremap <Leader>cv :e ~/dotfiles/cheatsheets/vim.txt
nnoremap <Leader>m  :MRU

let g:EasyMotion_do_mapping=0
nmap <C-d> <Plug>(easymotion-overwin-f)

"###Tagbarの呪文をキーマッピング
nnoremap <Leader>t  :TagbarOpenAutoClose<CR>
nnoremap <Leader>T  :echo tagbar#currenttag('[%s]', 'No tags')<CR>
"###UndoTree呼び出し、閉じる
nnoremap <f5>  :UndotreeToggle<cr>

"###各種拡張子ファイルが更新されたら自動でctagsファイルを更新
autocmd BufWritePost *.py,*.js silent! !ctags -R &
"##############vim-plugでプラグインを管理#############
call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'yegappan/mru'
Plug 'tpope/vim-commentary'
Plug 'mileszs/ack.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'preservim/tagbar'
Plug 'mbbill/undotree'
call plug#end()

"#########ack.vimを動かさせるために以下の記述が必要だった。
let g:ackprg = "/home/kosuke/bin/ack -s -H --nocolor --nogroup --column"

"#########YouCompleteMeを作動させるために必要。
let g:ycm_global_ycm_extra_conf = '${HOME}/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 3
let t:ycm_autoclose_preview_window_after_insertion = 1
set splitbelow

