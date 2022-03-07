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
"set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#rc()
call vundle#begin()

" Alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required
"Bundle "gmarik/vundle"
Plugin 'VundleVim/Vundle.vim'

" Vim-go
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Tagbar'
"Bundle 'Blackrush/vim-gocode'

" Utility
Bundle "scrooloose/nerdtree"
Bundle "Markdown"
Bundle "SuperTab"
Bundle "jsbeautify"
"Bundle "git://git.wincent.com/command-t.git"
"Bundle "https://github.com/Lokaltog/vim-powerline.git"

" Vim airline
Plugin 'vim-airline/vim-airline'
" Optional, Airline theme
Plugin 'vim-airline/vim-airline-themes'


" Text search
Plugin 'kien/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'

" Other
"Bundle "CmdlineComplete"
"Bundle "taglist.vim"
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
" Mapleader
"===============================================
" set mapleader
let mapleader = ","
"===============================================


"===============================================
" Vim-go
"===============================================
" vim-go custom mappings
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

" vim-go settings
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
"===============================================

"===============================================
" NERDTree
"===============================================
"autocmd vimenter * NERDTree    " auto open
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
noremap <F9> :!/usr/local/bin/ctags -R<CR>
noremap <F10> :TlistToggle<CR>
"===============================================



"===============================================
" Tagbar
"===============================================
"
nmap <silent> <F8> :TagbarToggle<CR>
"===============================================



"===============================================
" Vim airline
"===============================================
let g:airline_theme="bubblegum"
" ctrlp.vim
let g:airline_cmd='CtrlP' "ctrl + p open
"===============================================


"===============================================
" easymotion
"===============================================
nmap ss <Plug>(easymotion-s2)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

"===============================================


"===============================================
" Colorscheme
"===============================================
"set t_Co=256
"set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans = 1
"colorscheme solarized
colorscheme darkblue
"===============================================


"===============================================
" O
"===============================================
set foldmethod=marker
set viminfo='10,\"100,:5000,%,n~/.viminfo
set errorformat+=\"%f\"\\,%l\\,%c\\,%t%*[a-zA-Z]\\,\"%m\"
imap <F6> <C-x><C-o>
"===============================================
