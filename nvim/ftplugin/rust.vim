" Rust filetype plugin
" rustaceanvim handles most Rust LSP features automatically

" Enable inlay hints by default
lua vim.lsp.inlay_hint.enable(true)

" Auto-format with rustfmt on save
let g:rustfmt_autosave = 1

" Add bar at 100 character width for Rust files
set colorcolumn=100

" Run a test if cursor is on test function
:nnoremap <leader>t :RustLsp testables<CR>

" Open runnables picker
:nnoremap <silent> <F5> :RustLsp runnables<CR>

" Open Cargo.toml
:nnoremap <silent> <leader>oc :RustLsp openCargo<CR>
