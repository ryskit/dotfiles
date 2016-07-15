"""""""""""""""""""""""""""""
"keymap
""""""""""""""""""""""""""""""
nnoremap s <Nop>
" 分割したウィンドウ間の移動
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sw <C-w>w
" 分割したウィンドウそのものを移動
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
" ウィンドウを分割
""" 水平分割
nnoremap ss :<C-u>sp<CR>
""" 垂直分割
nnoremap sv :<C-u>vs<CR>
" タブページ関連

" 新規タブ
nnoremap st :<C-u>tabnew<CR>

" 次のタブに切り替え
nnoremap sn gt
""" 前のタブに切り替え
nnoremap sp gT
" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
" ウィンドウを閉じる
nnoremap sq :<C-u>q<CR>
" バッファを閉じる
nnoremap sQ :<C-u>bd<CR>
" insertモードから抜ける
inoremap <silent> jj <ESC>
noremap <S-h>   ^
noremap <S-j>   }
noremap <S-k>   {
noremap <S-l>   $
" ノーマルモードでもリターンキーで改行できる
nnoremap <CR> A<CR><ESC>

" xキーで文字を削除してもヤンクした内容が消えないようにする
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
""""""""""""""""""""""""""""""
"各種オプションの設定
""""""""""""""""""""""""""""""
" スワップファイルは使わない
set noswapfile
"UNDO ファイルを作成しない
set noundofile
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
set tabstop=2
" Vimが挿入するインデントの幅
set shiftwidth=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" 構文毎に文字色を変化させる
syntax on
" カラースキーマの指定
colorscheme Tomorrow-Night
" 行番号の色
highlight LineNr ctermfg=154
" インデントガイド
set list listchars=tab:\¦\
"---------------------------
"" Start Neobundle Settings.
"---------------------------
"" bundleで管理するディレクトリを指定
if has('vim_starting')
  if &compatible
    " Be iMproved
    set nocompatible  
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" nerdtree
NeoBundle 'scrooloose/nerdtree'

" vimproc
NeoBundle 'Shougo/vimproc'

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

" XMLとかHTMLとかの編集機能を強化する
NeoBundle 'xmledit'

" surround.vim : テキストを括弧で囲む／削除する
NeoBundle 'tpope/vim-surround'

" smartchr.vim : ==などの前後を整形
NeoBundle 'smartchr'
" <C-a>でtrue/false切替。他色々

NeoBundle 'taku-o/vim-toggle'
" 補完
" if_luaが有効ならneocompleteを使う
NeoBundle has('lua') ? 'Shougo/neocomplete' : 'Shougo/neocomplcache'
if neobundle#is_installed('neocomplete')
  " neocomplete用設定
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_ignore_case = 1
  let g:neocomplete#enable_smart_case = 1
  if !exists('g:neocomplete#keyword_patterns')
      let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns._ = '\h\w*'
elseif neobundle#is_installed('neocomplcache')
  " neocomplcache用設定
  let g:neocomplcache_enable_at_startup = 1
  let g:neocomplcache_enable_ignore_case = 1
  let g:neocomplcache_enable_smart_case = 1
  if !exists('g:neocomplcache_keyword_patterns')
      let g:neocomplcache_keyword_patterns = {}
  endif
  let g:neocomplcache_keyword_patterns._ = '\h\w*'
  let g:neocomplcache_enable_camel_case_completion = 1
  let g:neocomplcache_enable_underbar_completion = 1
endif
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

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

" ステータスラインをカッコよくする
NeoBundle 'Lokaltog/vim-powerline'

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'hail2u/vim-css3-syntax'
"NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'open-browser.vim'
NeoBundle 'tell-k/vim-browsereload-mac'
NeoBundle 'grep.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'kmnk/vim-unite-giti'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'elzr/vim-json'

call neobundle#end()
filetype plugin indent on
     
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
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

nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>

""""""""""""""""""""""""""""""
" nerdtree
""""""""""""""""""""""""""""""
nnoremap <silent><C-e> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""
" vimfiler
""""""""""""""""""""""""""""""
"nnoremap <C-e> :VimFiler -split -simple -winwidth=35 -no-quit<CR>

""""""""""""""""""""""""""""""
" 検索結果のハイライトをEsc連打でクリアする
""""""""""""""""""""""""""""""
nnoremap <ESC><ESC> :nohlsearch<CR>

""""""""""""""""""""""""""""""
" IndentLine
""""""""""""""""""""""""""""""
let g:indentLine_faster = 1
nmap <silent><Leader>i :<C-u>IndentLinesToggle<CR>

""""""""""""""""""""""""""""""
" カーソル下のURLをブラウザで開く
""""""""""""""""""""""""""""""
nmap <Leader>o <Plug>(openbrowser-open)
vmap <Leader>o <Plug>(openbrowser-open)
" ググる
nnoremap <Leader>g :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>

""""""""""""""""""""""""""""""
" vim-easy-align
""""""""""""""""""""""""""""""
" ヴィジュアルモードで選択し，easy-align 呼んで整形．(e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" easy-align を呼んだ上で，移動したりテキストオブジェクトを指定して整形 (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:vim_json_syntax_conceal = 0
