let g:rustfmt_autosave = 1 " run rustfmt on file save
set colorcolumn=100        " add bar at 100 character width
:nnoremap <leader>t :RustTest<CR> " run a test if its under cursor

" turn on inlay hints manually as they don't show up automatically on file open
:nnoremap <silent> <leader>h :RustSetInlayHints<CR>
:nnoremap <silent> <leader>ht :RustUnsetInlayHints<CR>

:nnoremap <silent> <F5> :RustRunnables<CR> " open runnables in telescope
:nnoremap <silent> <leader>oc :RustOpenCargo<CR>
