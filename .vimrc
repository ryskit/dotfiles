"""""""""""""""""""""""""""""
"keymap
""""""""""""""""""""""""""""""
" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" insertモードから抜ける
inoremap <silent> jj <ESC>

noremap <S-h>   ^
noremap <S-j>   }
noremap <S-k>   {
noremap <S-l>   $
" ノーマルモードでもリターンキーで改行できる
nnoremap <CR> A<CR><ESC>
""""""""""""""""""""""""""""""
"各種オプションの設定
""""""""""""""""""""""""""""""
" スワップファイルは使わない
set noswapfile
"UNDO ファイルを作成しない
:set noundofile
" BACKUPファイルを作成しない
set nobackup
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 入力中のコマンドを表示する
set showcmd
" バッファで開いているファイルのディレクトリでエクスクローラを開始する(でも
" エクスプローラって使ってない)
set browsedir=buffer
" 小文字のみで検索したときに大文字小文字を無視する
set smartcase
" 検索結果をハイライト表示する
set hlsearch
" 暗い背景色に合わせた配色にする
set background=dark
" タブ入力を複数の空白入力に置き換える
set expandtab
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch
" 保存されていないファイルがあるときでも別のファイルを開けるようにする
set hidden
" 不可視文字を表示する
set list
" タブと行の続きを可視化する
set listchars=tab:>\ ,extends:<
" 行番号を表示する
set number
" 対応する括弧やブレースを表示する
set showmatch
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
set notitle
" タブ文字の表示幅
set tabstop=4
" Vimが挿入するインデントの幅
set shiftwidth=4
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" 構文毎に文字色を変化させる
syntax on
" カラースキーマの指定
colorscheme hybrid
" 行番号の色
highlight LineNr ctermfg=darkyellow


"---------------------------
"" Start Neobundle Settings.
"---------------------------
"" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
  
" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'"

" syntastic
NeoBundle 'scrooloose/syntastic'

" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'

" Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'

" Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'

" コメントON/OFFを手軽に実行
NeoBundle 'tomtom/tcomment_vim'

" vim-autoclose
NeoBundle 'Townk/vim-autoclose'

" NERD_commenter.vim :最強コメント処理 (<Leader>c<space>でコメントをトグ ル)
NeoBundle 'scrooloose/nerdcommenter.git'

" XMLとかHTMLとかの編集機能を強化する
NeoBundle 'xmledit'

" surround.vim : テキストを括弧で囲む／削除する
NeoBundle 'tpope/vim-surround'

" smartchr.vim : ==などの前後を整形
NeoBundle 'smartchr'

" <C-a>でtrue/false切替。他色々
NeoBundle 'taku-o/vim-toggle'

" 補完 neocomplcache.vim : 究極のVim的補完環境
NeoBundle 'Shougo/neocomplcache'

" vim-smartword : 単語移動がスマートな感じで
NeoBundle 'smartword'

" open-browser.vim : カーソルの下のURLを開くor単語を検索エンジンで検索
NeoBundle 'tyru/open-browser.vim'

" vim-ruby : VimでRubyを扱う際の最も基本的な拡張機能
NeoBundle 'vim-ruby/vim-ruby'

" rails.vim : rails的なアレ
NeoBundle 'tpope/vim-rails'

" ソースコード上のメソッド宣言、変数宣言の一覧を表示
NeoBundle 'taglist.vim'

" vtreeexplorer.vim : ツリー状にファイルやディレクトリの一覧を表示
NeoBundle 'vtreeexplorer'

" ステータスラインをカッコよくする
NeoBundle 'Lokaltog/vim-powerline'

call neobundle#end()
    
" Required:
filetype plugin indent on
     
" 未インストールのプラグインがある場合、インストールするかどうかを尋ね
" てくれるようにする設定
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

""""""""""""""""""""""""""""""
" Unit.vimの設定
""""""""""""""""""""""""""""""
"let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
