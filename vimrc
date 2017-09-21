"===============================================
" Common
"===============================================
set nocompatible
"set autoread
"set autowrite
"set autochdir
"set autoindent
"set smartindent
"set paste
"set confirm
"set wildmenu
set visualbell
set hlsearch
set incsearch
set expandtab
set tabstop=4
set backspace=2
set shiftwidth=4
set softtabstop=4
set encoding=utf8
"===============================================


"===============================================
" Syntax
"===============================================
syntax enable
syntax on
"===============================================


"===============================================
" Folding
"===============================================
set foldenable
set fdm=marker
"set fdm=syntax
"       manual : Folds are created manually.
"       indent : Lines with equal indent form a fold.
"       expr   : ‘foldexpr’ gives the fold level of a line.
"       marker : Markers are used to specify folds.
"       syntax : Syntax highlighting items specify folds.
"       diff   : Fold text that is not changed.
"set foldclose=all
"use space to folden
"nnoremap <space> @=((foldclosed(line(‘.’)) < 0) ? ‘zc’ : ‘zo’)<CR>
"set foldopen-=undo
"set foldopen-=search
"===============================================


"===============================================
" Vundle
"===============================================
filetype off                      " required
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"call vundle#begin()

" Alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required
Bundle "gmarik/vundle"

" Vim-go
Bundle 'fatih/vim-go'
Bundle 'Blackrush/vim-gocode'
"Bundle 'Valloric/YouCompleteMe'

" Utility
Bundle "scrooloose/nerdtree"
Bundle "Markdown"
Bundle "SuperTab"
Bundle "jsbeautify"
Bundle "git://git.wincent.com/command-t.git"
Bundle "https://github.com/Lokaltog/vim-powerline.git"

" Other
Bundle "CmdlineComplete"
Bundle "taglist.vim"
"Bundle "vimwiki"
"Bundle "Xdebug"

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) pig - search(or refresh cache first) for pig
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"All of your Plugins must be added before the following line
call vundle#end()               " required
filetype plugin indent on       " required
"===============================================


"===============================================
" NERDTree
"===============================================
map <F4> :NERDTreeMirror<CR>
map <F4> :NERDTreeToggle<CR>
nnoremap <silent> <F5> :NERDTree<CR>
"===============================================


"===============================================
" PowerLine
"===============================================
set laststatus=2
let g:Powerline_symbols = 'unicode'
"===============================================


"===============================================
" CommandT
"===============================================
let g:CommandTMatchWindowAtTop=1 " show window at top
"===============================================


"===============================================
" Taglist
"===============================================
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_WinWidth=30
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
noremap <F6> :!/usr/local/bin/ctags -R<CR>
noremap <F10> :TlistToggle<CR>
"===============================================


"===============================================
" Colorscheme
"===============================================
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
colorscheme solarized
"===============================================


"===============================================
" O
"===============================================
set foldmethod=marker
set viminfo='10,\"100,:5000,%,n~/.viminfo
set errorformat+=\"%f\"\\,%l\\,%c\\,%t%*[a-zA-Z]\\,\"%m\"
let mapleader = ","       "Set mapleader
"===============================================
