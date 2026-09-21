-- MAPPINGS
vim.g.mapleader = ","

local function nmap(combo, mapping)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap("n", combo, mapping, options)
end

nmap("<leader>d", "dd") -- delete line
nmap("<leader><Space>", ":set hlsearch!<CR>") -- turn off search highlight manually
nmap("<leader>w", ":set wrap!<CR>") -- toggle line wrap
nmap("<leader>8", ":set colorcolumn=80<CR>") -- add bar at 80 character width
nmap("<leader>1", ":set colorcolumn=100<CR>") -- add bar at 100 character width

nmap("<leader>gg", ":GitGutterToggle<CR>")

nmap("<leader>cc", ":cclose<CR>") -- close quickfix list

nmap("<leader>a", "DO<Esc>p") -- cut to end of line and paste above
nmap("<leader>e", "DjA<Space><Esc>p") -- cut to end of line and paste at end of line below

nmap("H", "^") -- move to start of line
nmap("L", "$") -- move to end of line

-- LSP
--- code nav
nmap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
nmap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
nmap("gr", "<cmd>lua require('telescope.builtin').lsp_references()<CR>")
nmap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
nmap("K", "<cmd>lua vim.lsp.buf.hover()<CR>")
nmap("td", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
nmap("<c-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
nmap("g0", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
nmap("gW", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>")
--- action shortcuts
nmap("ga", "<cmd>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<leader>r", function()
  return ":IncRename " .. vim.fn.expand "<cword>"
end, { expr = true, desc = "Incremental rename" })

-- rustaceanvim
nmap("<leader>rr", ":RustLsp runnables<CR>")

-- markdown
nmap("mr", "<cmd>RenderMarkdown buf_toggle<CR>")

-- Inlay hints (Neovim 0.10+)
vim.keymap.set("n", "<leader>ih", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { noremap = true, silent = true, desc = "Toggle inlay hints" })

-- telescope
--- git
nmap("<leader>gst", ":lua require('telescope.builtin').git_status()<CR>")
nmap("<leader>gc", ":lua require('telescope.builtin').git_commits()<CR>")
--- vim pickers
nmap("<C-b>", ":lua require('telescope.builtin').buffers()<CR>")
nmap("<leader>tm", ":lua require('telescope.builtin').marks()<CR>")
nmap("<leader>th", ":lua require('telescope.builtin').help_tags()<CR>")
nmap("<leader>tc", ":lua require('telescope.builtin').colorscheme()<CR>")
--- file pickers
nmap("<C-p>", ":lua require('custom.telescope').project_files()<CR>")
nmap("<C-f>", ":lua require('telescope.builtin').live_grep()<CR>")
nmap("<leader>f", ":lua require('telescope.builtin').file_browser()<CR>")
--- dotfiles
nmap("<leader>vrc", ":lua require('custom.telescope').search_dotfiles()<CR>")

-- nvimtree
nmap("<C-n>", ":NvimTreeToggle<CR>")
nmap("<leader>nr", ":NvimTreeRefresh<CR>")
nmap("<leader>n2", ":lua require('nvim-tree.view').View.width = 20<CR>")
nmap("<leader>n3", ":lua require('nvim-tree.view').View.width = 30<CR>")
nmap("<leader>n4", ":lua require('nvim-tree.view').View.width = 40<CR>")
nmap("<leader>n5", ":lua require('nvim-tree.view').View.width = 50<CR>")
