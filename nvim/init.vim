" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

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
set autowrite           " write modified content on buffer switch or `:make`
syntax on               " turn on syntax highlighting

" Padded numbers are treated as decimals. e.g. 008 is treated as 8.0
set nrformats=

augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 300})
augroup END

" MAPPINGS
:let mapleader = ","
:nnoremap <leader>d dd                      " delete line
nnoremap <leader><space> :nohlsearch<CR>    " turn off search highlight manually
:nnoremap <leader>w :set wrap!<CR>          " toggle line wrap
:nnoremap <leader>8 :set colorcolumn=80<CR> " add bar at 80 character width

" truezen
nnoremap <leader>m :TZFocus<CR>      " toggle full screen
nnoremap <leader>z :TZAtaraxis<CR>   " toggle zen mode
nnoremap <leader>c :TZMinimalist<CR> " toggle minimal mode

map <silent> <leader>gg :GitGutterToggle<CR>

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

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'Pocco81/TrueZen.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'hrsh7th/nvim-compe'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground', { 'on': 'TSPlaygroudToggle' }

Plug 'morhetz/gruvbox'
call plug#end()

filetype plugin indent on

" Color Themes
colorscheme gruvbox
set background=dark

" Load configurations
lua require("config.compe")
lua require("config.lspconfig")
lua require("config.treesitter")
lua require("config.truezen")

