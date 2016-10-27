filetype off

" -----------------------------
"  Dein
" -----------------------------
if &compatible
  set nocompatible " Be iMproved
endif

set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim

call dein#begin('~/.vim')
call dein#add('Shougo/dein.vim')

" Default
if has('lua')
  " Code completion
  call dein#add('Shougo/neocomplete.vim')

  " Code Snippets
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
endif

" Comment
call dein#add('scrooloose/nerdcommenter')

" Emmet
call dein#add('mattn/emmet-vim')

" Indent
call dein#add('Yggdroot/indentLine')

" Powerline
call dein#add('powerline/powerline', {'rtp': 'powerline/bindings/vim'})

" Whitespace
call dein#add('bronson/vim-trailing-whitespace')

" Theme
call dein#add('NLKNguyen/papercolor-theme')

" Optional


call dein#end()


filetype plugin on
filetype indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" ----------------------------
"  neocomplete.vim, neosnippet
" ----------------------------
if !dein#check_install(['neocomplete.vim', 'neosnippet'])
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#min_keyword_length = 3
  let g:neocomplete#auto_completion_start_length = 1

  imap <expr><CR> neosnippet#expandable() ? '<Plug>(neosnippet_expand_or_jump)' : pumvisible() ? '<C-y>' : '<CR>'
  imap <expr><TAB> pumvisible() ? '<C-n>' : neosnippet#jumpable() ? '<Plug>(neosnippet_expand_or_jump)' : '<TAB>'
endif

" ----------------------------
" nerdcommenter
" ----------------------------
let NERDSpaceDelims = 1

nmap cc <Plug>NERDCommenterToggle
vmap cc <Plug>NERDCommenterToggle

" ----------------------------
"  Powerline
"-----------------------------
if !dein#check_install(['powerline'])
  " python from powerline.vim import setup as powerline_setup
  " python powerline_setup()
  " python del powerline_setup

  let g:Powerline_symbols = 'fancy'
endif

" ----------------------------
"  Indent
" ----------------------------
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et
autocmd FileType cs         setlocal sw=4 sts=4 ts=4 et
autocmd FileType css        setlocal sw=2 sts=2 ts=2 et
autocmd FileType haml       setlocal sw=2 sts=2 ts=2 et
autocmd FileType html       setlocal sw=2 sts=2 ts=2 et
autocmd FileType javascript setlocal sw=2 sts=2 ts=2 et
autocmd FileType php        setlocal sw=4 sts=4 ts=4 et
autocmd FileType python     setlocal sw=4 sts=4 ts=4 et
autocmd FileType ruby       setlocal sw=2 sts=2 ts=2 et
autocmd FileType typescript setlocal sw=4 sts=4 ts=4 et
autocmd FileType sh         setlocal sw=2 sts=2 ts=2 et
autocmd FileType vim        setlocal sw=2 sts=2 ts=2 et
autocmd FileType yaml       setlocal sw=2 sts=2 ts=2 et

" ----------------------------
"  File Type
" ----------------------------
au BufRead,BufNewFile,BufReadPre *.coffee    set filetype=coffee
au BufRead,BufNewFile,BufReadPre *.jpbuilder set filetype=ruby
au BufRead,BufNewFile,BufReadPre *.scss      set filetype=sass

" ----------------------------
"  Basic
" ----------------------------
" Line number
set number

"
set ambiwidth=double

" Tab to Space
set tabstop=2
set expandtab
set shiftwidth=2

" Indent
set smartindent
set autoindent

" Incremental search
set incsearch

" Highlight search result
set hlsearch

" Highlight curline
set cursorline

" 回り込み
set virtualedit=block
set whichwrap=b,s,[,],<,>

" Backspace
set backspace=indent,eol,start

" Ruler
set ruler

" Show cmmand
set showcmd

" Show mode
set noshowmode

" Show match braces
set showmatch

" trash .swap
set noswapfile

"
set showtabline=2

" 256 colors
set t_Co=256

" Dark!
set background=dark

" Auto reload
set autoread

set laststatus=2

" Color Scheme
colorscheme PaperColor

" ----------------------------
"  Keyboard mapping
" ----------------------------
nnoremap s <Nop>
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap tt <C-w>w
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

