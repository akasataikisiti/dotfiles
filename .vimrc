source $VIMRUNTIME/defaults.vim
"#####表示設定##############
set number "行番号を設定する
"set title "編集中のファイル名を表示する
set showmatch "『』入力時の対応する括弧を表示
set shiftwidth=2 "自動シフトの幅"
set expandtab "タブのスペース展開"
set tabstop=2 "インデントをスペース４つ分に設定

"########swpファイル、バックアップファイル、undoファイルを出力させない。
set noswapfile
set nobackup
set noundofile
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
nnoremap :f :Fern . -drawer
let g:EasyMotion_do_mapping=0
nmap <C-f> <Plug>(easymotion-overwin-f)

"####レジスタ使用しない削除機能
nnoremap <leader>d "_d
nnoremap x "_x

"########ウィンドウ操作マッピング
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
map sr <C-w>r
map sR <C-w>R
"水平分割を垂直分割に直す
map sH <c-w>t<c-w>H
"垂直分割を水平分割に直す
map sK <c-w>t<c-w>K
map <Space> <C-w>w
nmap s<left> <C-w><
nmap s<right> <C-w>>
nmap s<up> <C-w>+
nmap s<down> <C-w>-
"カーソル下のファイルを開く
"縦割り
nmap sf :vertical wincmd f<CR> <c-w>r
"新規タブ
nmap sF <c-w>gf
"Moving text
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
"vim-airlineタブの移動
nnoremap :bp :bprevious<CR>
nnoremap :bn :bnext<CR>

"###Tagbarの呪文をキーマッピング
nnoremap <Leader>t  :TagbarOpenAutoClose<CR>
nnoremap <Leader>T  :echo tagbar#currenttag('[%s]', 'No tags')<CR>
"###UndoTree呼び出し、閉じる
nnoremap <F5>  :UndotreeToggle<cr>
"###相対行表示の切り替え
" nnoremap <F3> :<C-u>setlocal relativenumber!<CR>
"###各種拡張子ファイルが更新されたら自動でctagsファイルを更新
autocmd BufWritePost *.py,*.js silent! !ctags -R &

"HTMLタグの上のカーソル移動を効率化させる拡張スクリプトを有効化
source $VIMRUNTIME/macros/matchit.vim
"Yankした時にWindowsのクリップボードに共有。
augroup Yank
  au!
  autocmd TextYankPost * :call system('clip.exe',@")
augroup END
"ステータスラインにgithubの状態を追加
" set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
"translatevim用の設定
let g:translate_source = "en"
let g:translate_target = "ja"
let g:translate_winsize = 10
vnoremap <F3> :Translate
vnoremap <F4> :Translate!
"
"タブ、空白、改行の可視化
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
   
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif
"##############vim-plugでプラグインを管理#############
call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'yegappan/mru'
Plug 'tpope/vim-commentary'
Plug 'mileszs/ack.vim'
Plug 'preservim/tagbar'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim',{'branch': 'release'}
Plug 'lambdalisue/fern.vim'
Plug 'alvan/vim-closetag'
Plug 'sirver/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'skanehira/vsession'
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'
Plug 'skanehira/translate.vim'
Plug 'tpope/vim-surround'
call plug#end()

"#########ack.vimを動かさせるために以下の記述が必要だった。
let g:ackprg = "/home/kosuke/bin/ack -s -H --nocolor --nogroup --column"

"########coc.nvimで勝手に拡張をインストールさせる。
let g:coc_global_extensions = [
      \  'coc-lists'
      \, 'coc-json'
      \, 'coc-marketplace'
      \, 'coc-html'
      \, 'coc-css'
      \, 'coc-tsserver'
      \, 'coc-solargraph'
      \, 'coc-python'
      \, 'coc-snippets'
      \, 'coc-vetur'
      \ ]
"#######UltiSnipsのスニペットファイル置き場の定義
let g:UltiSnipsSnippetsDir=expand("$HOME/dotfiles/.vim/UltiSnips")
"########UltiSnipsの起動とリスト表示
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsEditSplit="vertical"

"######vim-airlineの設定
let g:airline#extensions#tabline#enabled = 1 " タブラインを表示

"######カレントウィンドウを新規タブで開きなおす
if v:version >=700
  nnoremap :tt :call OpenNewTab()
  function! OpenNewTab()
    let f = expand("%:p")
    execute ":q"
    execute ":tabnew ".f
  endfunction
endif

"#####vimwikiを正常動作させるのに必要らしい
set nocompatible
filetype plugin on
syntax on
