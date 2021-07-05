" Use Vim settings
set nocompatible

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

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
set history=200         " save 200 lines of command history
syntax on               " turn on syntax highlighting

" Padded numbers are treated as decimals. e.g. 008 is treated as 8.0
set nrformats=

" MAPPINGS
:let mapleader = ","
:nnoremap <leader>d dd                   " delete line
nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight manually
:nnoremap <leader>w :set wrap!<CR>       " toggle line wrap
:nnoremap <leader>8 :set colorcolumn=80<CR> " add bar at 80 character width

map <silent> <C-t> :NERDTreeToggle<CR>
map <silent> <C-t><C-r> :NERDTreeRefreshRoot<CR>
map <silent> <leader>gg :GitGutterToggle<CR>

nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

" STATUS LINE
set laststatus=2
set statusline+=%#GruvboxAquaSign#
set statusline+=\ [%n]    " buffer number
set statusline+=\ %M      " modified
set statusline+=\ %f      " path
set statusline+=\ %3b     " value of character under cursor
set statusline+=\ -\      " separator
set statusline+=\0x%03B   " as above, in hexadecimal
set statusline+=%=        " right side settings below:
set statusline+=\ %c:%l   " column number : line number
set statusline+=\ %3p%%   " percentage through file

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
Plugin 'rust-lang/rust.vim'
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

" Change backups to save into /tmp folder
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
