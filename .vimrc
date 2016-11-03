set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}

Plugin 'scrooloose/nerdtree'
Plugin 'minibufexpl.vim'
Plugin 'majutsushi/tagbar'

Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'


Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'


" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'


" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'



" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}


" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}


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
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

let mapleader = ","

set tags=tags;

syntax on
syntax enable

set autoindent
set cindent
set suffixes=.o,.bak,~,.a,.so,.swp,.pyc
set number

set hlsearch
set incsearch
set ignorecase
set smartcase

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set tabstop=4
set softtabstop=4
set shiftwidth=4

set showmatch
set scrolloff=5

set cursorline
"set cursorcolumn

set backspace=indent,eol,start

nnoremap <leader>wl <C-W>l
nnoremap <leader>wh <C-W>h
nnoremap <leader>wk <C-W>k
nnoremap <leader>wj <C-W>j
nnoremap <leader>wc <C-W>c
nnoremap <leader>wf <C-W>_
nnoremap <leader>ws :sp<CR>
nnoremap <leader>wv :vsp<CR>
nnoremap <leader>wo :only<CR>
nnoremap <leader>wq :qall<CR>
nnoremap <leader>m %

" YouCompleteMe settings
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
nnoremap <leader>gi :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR> 
let g:ycm_confirm_extra_conf=0
let g:ycm_filetype_blacklist = {
	\ 'tagbar' : 1,
	\ 'nerdtree' : 1,
\}

" YCM-Generator settings
nnoremap <leader>yg :YcmGenerateConfig<CR>

"nerdtree settings
nnoremap <leader>f :NERDTreeToggle<CR>
"let NERDTreeWinPos='right'

"minibufexpl settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"tagbar settings
nnoremap <leader>t :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0

"ultisnips settings
let g:UltiSnipsExpandTrigger="<tab>"
