" Use Vim settings
set nocompatible

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Wrap long lines
map Q gq

" Color Themes
colorscheme gruvbox
set background=dark

" Editor niceness
set spell		" turn on spell check
set number              " turn on line numbers
set relativenumber      " show relative line numbers
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set cursorline          " highlight the current line
set showmatch           " highlight matching [{( )}]
set splitright          " vertical windows split to right
set splitbelow          " horizontal windows split to bottom
set incsearch           " do incremental searching
set hls                 " turn on highlighting

syntax on

" Padded numbers are treated as decimals. e.g. 008 is treated as 8.0
set nrformats=

" MAPPINGS
:let mapleader = ","
:nnoremap <leader>d dd                   " delete line
nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight manually
:nnoremap <leader>w :set wrap!<CR>       " toggle line wrap
:nnoremap <leader>8 :set colorcolumn=80<CR> " add bar at 80 character width

" Save 200 lines of command history.
set history=200

" Change backups to save into /tmp folder
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" PLUGINS
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'fatih/vim-go'
Plugin 'machakann/vim-highlightedyank'
Plugin 'preservim/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'w0rp/ale'

call vundle#end()

filetype plugin indent on

" quit vim if Nerdtree is only buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <silent> <C-t> :NERDTreeToggle<CR>
map <silent> <C-t><C-r> :NERDTreeRefreshRoot<CR>

map <silent> <C-g> :GitGutterToggle<CR>
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)
