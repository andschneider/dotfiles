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

" STATUS LINE
set laststatus=2
set statusline=%#GruvboxAquaSign#
set statusline+=\ [%n]    " buffer number
set statusline+=\ %M      " modified
set statusline+=\ %f      " path
set statusline+=\ %3b     " value of character under cursor
set statusline+=\ -\      " separator
set statusline+=\0x%03B   " as above, in hexadecimal
set statusline+=%=        " right side settings below:
set statusline+=\ %c:%l   " column number : line number
set statusline+=\ %3p%%   " percentage through file

" Load lazy.nvim plugin specifications
lua require("lazy-setup")
lua require("plugin.diagnostics")

filetype plugin indent on

" Needed for nvim-cmp
set completeopt=menu,menuone,noselect

" Color Themes
colorscheme gruvbox
set background=dark

" Highlight whitespace in markdown files, though stripping remains disabled by the blacklist
:autocmd FileType markdown EnableWhitespace

" Load keymaps (can load early since it doesn't depend on plugins)
lua require("custom.keymaps")

