-- Built-in Neovim diagnostic display (shared by language servers).
-- Enable diagnostics UI
vim.opt.signcolumn = "yes"

-- Configure diagnostic display
vim.diagnostic.config {
  virtual_text = false, -- Don't show inline diagnostics
  signs = true, -- Show signs in the sign column
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
}

-- Customize diagnostic signs
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
