set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
set mouse=a
syntax enable
syntax on
set autoindent
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start

set hlsearch
set showmatch
set matchtime=3

colorscheme default 

filetype plugin indent on

"==============for taglist.vim======================
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"==============for c.vim======================
let g:explStartBelow= 0    " Put new explorer window above the
let g:C_AuthorName	= 'Neil Hao'
let g:C_AuthorRef	= 'Nh'
let g:C_Email		= 'nbaoping@cisco.com'
let g:C_Company		= 'Cisco'

"==============for minibufexpl.vim======================
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabsSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" settings of cscope.
" I use GNU global instead cscope because global is faster.
"set cscopetag
"set cscopeprg=gtags-cscope
"let g:Gtags_Auto_Map = 1

call pathogen#infect()
set encoding=utf-8

nmap <F8> :TagbarToggle<CR>
let g:tagbar_left=1
let g:tagbar_sort=0
let g:tagbar_autoshowtag=0

map <Space> <Plug>(easymotion-prefix)
