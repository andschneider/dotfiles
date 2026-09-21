-- nvim-tree.lua configuration
-- File explorer with git integration

require("nvim-tree").setup {
  disable_netrw = true,
  hijack_netrw = true,
  diagnostics = {
    enable = false,
  },
  update_focused_file = {
    enable = false,
    update_root = false,
    ignore_list = {},
  },
  filters = {
    dotfiles = false,
  },
  git = {
    enable = true,
    timeout = 500,
  },
  view = {
    width = 30,
    side = "left",
    number = false,
    relativenumber = false,
    signcolumn = "yes",
  },
  renderer = {
    highlight_git = true,
    root_folder_label = ":~:s?$?/..?",
    indent_markers = {
      enable = false,
    },
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = true,
    },
  },
}

-- Enable colors
vim.opt.termguicolors = true
