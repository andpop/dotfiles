set nocompatible
filetype plugin on

set hlsearch
set ignorecase
set smartcase
"set incsearch
"set cursorline
set number
set mouse=a

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set wrap
set linebreak

set splitbelow " New window is created below of current window
set splitright " New window is created right of current window

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set nowb
set noswapfile

set encoding=utf-8

set hidden

let mapleader=" "

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" imap [ []<LEFT>
" imap ( ()<LEFT>
" imap { {}<LEFT>
nmap j gj
nmap k gk

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

nmap <silent> <leader><leader>t :NERDTreeToggle<CR>

" Edit .vimrc
map <leader>vl :vsp $MYVIMRC<CR>
map <leader>vr :source $MYVIMRC<CR>

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'tpope/vim-sensible'
Plug 'lyokha/vim-xkbswitch'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'matze/vim-move'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'bkad/CamelCaseMotion'
Plug 'tpope/vim-unimpaired'
Plug 'machakann/vim-highlightedyank'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"wPlug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" set highlight to 1000 ms
let g:highlightedyank_highlight_duration = 800

let g:molokai_original=1
" Dark colorschemes
" color darkblue
" color molokai
" color gruvbox
" color jellybeans
" color zenburn
"
" Light colorschemes
color basic-light
color PaperColor

let g:camelcasemotion_key = '<leader>'

let g:XkbSwitchEnabled = 1
let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
let g:XkbSwitchIMappings = ['ru']
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" " Move current line up
" nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
" " Move current line down
" nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

" " Insert blank line after current line (in Normal mode)
" nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
" " Insert blank line after current line (in Normal mode)
" nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" Перемещения в режиме редактирования
" inoremap <leader>h <left>
" inoremap <leader>j <down>
" inoremap <leader>k <up>
" inoremap <leader>l <right>

" format the entire file
nnoremap ff :normal! gg=G``<CR>

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>


let mapleader=" "
