-- Telescope: Fuzzy finder for files, buffers, and more
-- https://github.com/nvim-telescope/telescope.nvim

local telescope = require "telescope"
local actions = require "telescope.actions"

telescope.setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<esc>"] = actions.close,
      },
      n = {
        ["q"] = actions.close,
      },
    },
  },
  pickers = {
    lsp_references = {
      jump_type = "never",
      layout_strategy = "horizontal",
      layout_config = { preview_cutoff = 0, preview_width = 0.65 },
    },
    find_files = {
      hidden = true,
      find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
    },
  },
  extensions = {
    -- UI select extension for better UI picker integration
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {},
    },
  },
}

-- Load extensions
telescope.load_extension "ui-select"
