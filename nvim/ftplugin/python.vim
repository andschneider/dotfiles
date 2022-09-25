" python specific formatting
setlocal tabstop=4           " visual spaces per TAB
setlocal softtabstop=4       " number of spaces when tab is hit
setlocal expandtab           " tabs are spaces
setlocal autoindent          " keep same indent from previous line

" Create a mapping to help run Python scripts.
map <F5> :w<CR>:!python3 %<CR>
" could also do :w <bar> :!python3 %
map <F6> :!clear<CR><CR>

