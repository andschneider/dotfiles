-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require("nvim-tree").setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = false,
  diagnostics = {
    enable = true,
    icons = { hint = "", info = "", warning = "", error = "" },
  },
  update_focused_file = { enable = false, update_cwd = false, ignore_list = {} },
  system_open = { cmd = nil, args = {} },
  filters = { dotfiles = true, custom = {} },
  git = { enable = true, ignore = true, timeout = 500 },
  view = {
    adaptive_size = false,
    width = 30,
    hide_root_folder = false,
    side = "left",
    mappings = { custom_only = false, list = {} },
    number = false,
    relativenumber = false,
    signcolumn = "yes",
  },
  trash = { cmd = "trash", require_confirm = true },
}

-- enable colors
vim.opt.termguicolors = true
