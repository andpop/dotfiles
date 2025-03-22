set nocompatible
filetype plugin on

set relativenumber
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

" nmap j gj
" nmap k gk

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Файловый менеджер
" Показать/скрыть панель NERDTree
nmap <silent> <leader>e :NERDTreeToggle<CR>
" Открыть панель NERDTree и встать на файле, открытом в текущем буфере
nmap <silent> <leader>o :NERDTreeFind<CR>

" Edit .vimrc
map <leader>vl :vsp $MYVIMRC<CR>
map <leader>vr :source $MYVIMRC<CR>

" Работа с системным буфером обмена
vnoremap <C-c> "+y
inoremap <C-v> <ESC>"+pa
" vnoremap <C-d>"+d

" Сохранение файла по F2
inoremap <F2> <ESC>:w<CR>
cnoremap <F2> <ESC>:w<CR>
nnoremap <F2> :w<CR>

" Автодополнение пути при нажатии Tab в режиме вставки
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-x>\<C-f>"

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


" copy (write) highlighted text to .vimbuffer
" Для WSL используется clip.exe
" vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| xclip -selection clipboard <CR><CR>
" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Include plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
Plug 'vifm/vifm.vim'
Plug 'Yggdroot/indentLine'
Plug 'PProvost/vim-ps1'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'suy/vim-context-commentstring'
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'

" Initialize plugin system
call plug#end()

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
" color basic-light
" color PaperColor
color jellybeans

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimfm
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vbkad/CamelCaseMotion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:camelcasemotion_key = '<leader>'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Yggdroot/indentLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '│'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  => lyokha/vim-xkbswitch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:XkbSwitchEnabled = 1
let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
let g:XkbSwitchIMappings = ['ru']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz


" Перемещения в режиме редактирования
" inoremap <leader>h <left>
" inoremap <leader>j <down>
" inoremap <leader>k <up>
" inoremap <leader>l <right>

" format the entire file
" nnoremap ff :normal! gg=G``<CR>

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

let mapleader=" "

" Включаем перенос строк, для текста он нужен
" autocmd FileType markdown :set wrap linebreak nolist
autocmd FileType markdown :set nolist
" autocmd FileType markdown :colorscheme basic-light
autocmd FileType markdown :colorscheme PaperColor
" autocmd FileType markdown :colorscheme gruvbox
" autocmd FileType markdown setlocal textwidth=80
" autocmd FileType markdown setlocal colorcolumn=80


" Парные скобки для блоков кода
inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O

" Сохранять сделанные складки (folds) при закрытии/открытии файла
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Делает текущим каталог, в котором находится редактируемый файл
set autochdir

au VimEnter no_plugins.vim setl window=66
au VimEnter no_plugins.vim normal 8Gzz
au VimEnter no_plugins.vim command! GO normal M17jzzH
au VimEnter no_plugins.vim command! BACK normal M17kzzH
au VimEnter no_plugins.vim command! RUN execute getline(".")
au VimEnter no_plugins.vim unmap H
au VimEnter no_plugins.vim unmap L

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

