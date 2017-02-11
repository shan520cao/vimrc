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

Plugin 'scrooloose/nerdtree'
Plugin 'minibufexpl.vim'
Plugin 'majutsushi/tagbar'

Plugin 'DoxygenToolkit.vim'
Plugin 'AutoComplPop'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'

"Plugin 'altercation/vim-colors-solarized'

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

nnoremap <leader>l <C-W>l
nnoremap <leader>h <C-W>h
nnoremap <leader>k <C-W>k
nnoremap <leader>j <C-W>j
nnoremap <leader>wc <C-W>c
nnoremap <leader>wf <C-W>_
nnoremap <leader>ws :sp<CR>
nnoremap <leader>wv :vsp<CR>
nnoremap <leader>wo :only<CR>
nnoremap <leader>q :qall<CR>

nnoremap <leader>ev :vi $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>gr :Ag! -w '<cword>'<cr>
nnoremap <leader>gf :AgFile! '<cword>'<cr>

"nerdtree settings
nnoremap <leader>f :NERDTreeToggle<CR>
"let NERDTreeWinPos='right'

"minibufexpl settings
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
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

"ag silversearcher-ag settings
let g:ag_working_path_mode="r"
let g:ag_highlight=1

"ctrlp ctrlpvim/ctrlp.vim
".ctrlpignore 
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1

" solarized
"set background=dark
"colorscheme solarized

"go tags config for tagbar
"two ways to install gotags
"1. go get -u github.com/jstemmer/gotags
"2. brew install gotags
let g:tagbar_type_go = {
			\ 'ctagstype' : 'go',
			\ 'kinds'     : [
			\ 'p:package',
			\ 'i:imports:1',
			\ 'c:constants',
			\ 'v:variables',
			\ 't:types',
			\ 'n:interfaces',
			\ 'w:fields',
			\ 'e:embedded',
			\ 'm:methods',
			\ 'r:constructor',
			\ 'f:functions'
			\ ],
			\ 'sro' : '.',
			\ 'kind2scope' : {
			\ 't' : 'ctype',
			\ 'n' : 'ntype'
			\ },
			\ 'scope2kind' : {
			\ 'ctype' : 't',
			\ 'ntype' : 'n'
			\ },
			\ 'ctagsbin'  : 'gotags',
			\ 'ctagsargs' : '-sort -silent'
			\ }

" DoxygenToolkit.vim
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param  "
let g:DoxygenToolkit_returnTag="@Returns  "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="sam.cao"
let g:DoxygenToolkit_licenseTag="My own license"
