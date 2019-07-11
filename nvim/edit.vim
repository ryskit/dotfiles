"
" Edit settings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" indent
set smarttab
set expandtab
set autoindent smartindent
set modeline

set sw=4 ts=4 sts=4
set scrolloff=5

" highlight
set showmatch

set cpoptions-=m
set matchtime=1
set matchpairs+=<:>

" move the split screen
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sw <C-w>w

" move "the split screen itself
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H

" shell command
noremap <Space><CR> :!sh<CR>
nnoremap <Space><CR> V:!sh<CR>

" horizontal split
nnoremap ss :<C-u>sp<CR>

" vertical split
nnoremap sv :<C-u>vs<CR>

" escape insert mode
inoremap <silent> jj <ESC>

nnoremap <ESC><ESC> :nohlsearch<CR>

" search
set ignorecase
set smartcase

" Ignore case on insert completion.
set infercase

noremap <Space><CR> :!sh<CR>
nnoremap <Space><CR> V:!sh<CR>

set directory-=.
if v:version >= 703
  set undofile
  let &g:undodir=&directory
endif

" Don't create backup.
set nowritebackup
set nobackup
set noswapfile
set backupdir-=.

