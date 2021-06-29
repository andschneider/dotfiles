let g:rustfmt_autosave = 1 " run rustfmt on file save
set colorcolumn=100        " add bar at 100 character width
:nnoremap <leader>t :RustTest<CR> " run a test if its under cursor

" Enable type inlay hints
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs
\ lua require'lsp_extensions'.inlay_hints{ prefix = '> ', aligned = true, highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }

