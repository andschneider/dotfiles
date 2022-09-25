local true_zen = require "true-zen"

true_zen.setup {
  modes = {
    ataraxis = {
      shade = "dark",
      backdrop = 0,
      minimum_writing_area = { width = 100, height = 150 },
      quit_untoggles = true,
      padding = { left = 52, right = 52, top = 0, bottom = 0 },
      callbacks = { open_pre = nil, open_pos = nil, close_pre = nil, close_pos = nil },
    },
    focus = { callbacks = { open_pre = nil, open_pos = nil, close_pre = nil, close_pos = nil } },
  },
  integrations = {
    tmux = false,
    twilight = false,
    lualine = false,
    kitty = { enabled = false, font = "+3" },
  },
}
