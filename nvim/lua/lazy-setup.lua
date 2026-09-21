-- lazy.nvim plugin specifications
-- This file defines all plugins to be installed and managed by lazy.nvim

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  -- File Management
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require "plugin.nvimtree"
    end,
  },

  -- Telescope (Fuzzy Finder)
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    cmd = "Telescope",
    keys = {
      { "<C-p>", mode = "n" },
      { "<C-f>", mode = "n" },
      { "<C-b>", mode = "n" },
    },
    config = function()
      require "plugin.telescope"
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
  },

  -- LSP & Completion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    event = "InsertEnter",
    config = function()
      require "plugin.cmp"
    end,
  },
  { "hrsh7th/cmp-nvim-lsp", lazy = true },
  { "hrsh7th/cmp-buffer", lazy = true },
  { "hrsh7th/cmp-path", lazy = true },

  -- Language Support
  {
    "mrcjkb/rustaceanvim",
    version = "^9",
    lazy = false,
    init = function()
      vim.g.rustaceanvim = {
        server = {
          cmd = function()
            -- Bypass the rustup proxy: pinned and custom toolchains may lack rust-analyzer.
            -- Launch the binary directly so Cargo still uses the project's toolchain.
            local result = vim
              .system({ "rustup", "which", "--toolchain", "stable", "rust-analyzer" }, { text = true })
              :wait()
            if result.code ~= 0 then
              error(
                "Install Rust Analyzer with `rustup component add --toolchain stable rust-analyzer`: "
                  .. (result.stderr or "")
              )
            end
            return { vim.trim(result.stdout) }
          end,
        },
      }
    end,
  },
  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    config = function()
      require("crates").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require "plugin.treesitter"
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    lazy = false,
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    opts = { enabled = false },
  },

  -- Git Integration
  { "airblade/vim-gitgutter" },

  -- UI/UX
  {
    "morhetz/gruvbox",
    priority = 1000,
    lazy = false,
  },
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- LSP Enhancements
  {
    "smjonas/inc-rename.nvim",
    opts = {},
  },

  -- Text Editing
  { "tpope/vim-surround" },
  { "tpope/vim-unimpaired" },
  { "AndrewRadev/splitjoin.vim" },
  { "ntpeters/vim-better-whitespace" },
}
