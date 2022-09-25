local nvim_lsp = require "lspconfig"

-- Rust
-- based on: https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary
-- https://sharksforarms.dev/posts/neovim-rust/
-- nvim_lsp.rust_analyzer.setup({
--     on_attach = on_attach,
--     settings = {
--         ["rust-analyzer"] = {
--             assist = {importGranularity = "module", importPrefix = "by_self"},
--             cargo = {loadOutDirsFromCheck = true},
--             procMacro = {enable = true}
--         }
--     }
-- })

-- Go
-- settings: https://go.googlesource.com/tools/+/refs/heads/master/gopls/doc/settings.md
nvim_lsp.gopls.setup {
  on_attach = on_attach,
  cmd = { "gopls", "-remote=auto" },
  settings = { ["gopls"] = { analyses = { unusedparams = true }, usePlaceholders = true } },
}

vim.opt.signcolumn = "yes"

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  { virtual_text = false, signs = true, update_in_insert = true }
)

-- require("lsp_lines").setup()
