require'nvim-tree'.setup {
  disable_netrw       = true, -- disables netrw completely
  hijack_netrw        = true, -- hijack netrw window on startup
  open_on_setup       = true, -- open the tree when running this setup function
  ignore_ft_on_setup  = {},   -- will not open on setup if the filetype is in this list
  auto_close          = true, -- closes neovim automatically when the tree is the last **WINDOW** in the view
  open_on_tab         = false, -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
  hijack_cursor       = false, -- hijack the cursor in the tree to put it at the start of the filename
  update_cwd          = false, -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
  lsp_diagnostics     = true, -- show lsp diagnostics in the signcolumn
  -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
  update_focused_file = {
    enable      = false, -- enables the feature
    update_cwd  = false,
    ignore_list = {}
  },
  -- configuration options for the system open command (`s` in the tree by default)
  system_open = {
    cmd  = nil,
    args = {}
  },
  view = {
    width = 30,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}

