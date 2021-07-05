" LSP config

" Code navigation shortcuts
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>

nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> td    <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

" action shortcuts
nnoremap <silent> ga           <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> <leader>r    <cmd>lua vim.lsp.buf.rename()<CR>

" have a fixed column for the diagnostics to appear in
set signcolumn=yes

" TODO review
" " Set updatetime for CursorHold
" " 300ms of no cursor movement to trigger CursorHold
" set updatetime=300

