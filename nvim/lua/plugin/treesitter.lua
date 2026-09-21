-- Treesitter configuration for Neovim 0.11+
-- The old nvim-treesitter.configs API is deprecated

-- Install parsers (runs async, no-op if already installed)
require("nvim-treesitter").install {
  "rust",
  "c",
  "go",
  "python",
  "dockerfile",
  "json",
  "toml",
  "yaml",
  "lua",
  "bash",
  "markdown",
}

-- Enable treesitter highlighting for all supported filetypes
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

-- Enable treesitter-based folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldenable = false -- Start with folds open

-- Incremental selection keymaps
vim.keymap.set("n", "gnn", function()
  require("nvim-treesitter.incremental_selection").init_selection()
end, { desc = "Init treesitter selection" })

vim.keymap.set("x", "grn", function()
  require("nvim-treesitter.incremental_selection").node_incremental()
end, { desc = "Increment node selection" })

vim.keymap.set("x", "grc", function()
  require("nvim-treesitter.incremental_selection").scope_incremental()
end, { desc = "Increment scope selection" })

vim.keymap.set("x", "grm", function()
  require("nvim-treesitter.incremental_selection").node_decremental()
end, { desc = "Decrement node selection" })
