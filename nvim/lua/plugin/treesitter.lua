require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "rust", "c", "go", "python", "dockerfile", "json", "toml", "yaml", "lua"
    },
    ignore_install = {},
    highlight = {enable = true},
    indent = {enable = true},
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm"
        }
    }
}
