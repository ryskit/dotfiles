"
" View settings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show line number
set number

" Show whitespaces
set list
set listchars=tab:^.,trail:.,extends:>,precedes:<

" Always display statusline.
set laststatus=2
" Show full path on statusline.
set statusline+=%F
" Height of command line.
set cmdheight=2
" Not show command on statusline.
set noshowcmd
" Show title.
set title
" Disable tabline.
set showtabline=0

" Splitting a window will put the new window below the current one.
set splitbelow
" Splitting a window will put the new window right the current one.
set splitright
" Set minimal width for current window.
set winwidth=30
" Set minimal height for current window.
" set winheight=20
set winheight=1
" Set maximam maximam command line window.
set cmdwinheight=5
" No equal window size.
set noequalalways

" Adjust window size of preview and help.
set previewheight=8
set helpheight=12

set ttyfast

" When a line is long, do not omit it in @.
set display=lastline
" Display an invisible letter with hex format.
"set display+=uhex

" Don't wrap scan
set nowrapscan

" Disable folding
set nofoldenable

" For conceal.
set conceallevel=2 concealcursor=niv

set colorcolumn=80

" Set background
if !has('gui_running')
    set background=dark
    color desert
else
    set background=light
    color evening
endif
