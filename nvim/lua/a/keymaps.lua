-- MAPPINGS
vim.g.mapleader = ','

local function map(mode, combo, mapping)
    local options = {noremap = true, silent = true}
    vim.api.nvim_set_keymap(mode, combo, mapping, options)
end

map('n', '<leader>d', 'dd') -- delete line
map('n', '<leader><Space>', ':set hlsearch!<CR>') -- turn off search highlight manually
map('n', '<leader>w', ':set wrap!<CR>') -- toggle line wrap
map('n', '<leader>8', ':set colorcolumn=80<CR>') -- add bar at 80 character width

map('n', '<leader>gg', ':GitGutterToggle<CR>')

map('n', '<leader>cc', ':cclose<CR>') -- close quickfix list

map('n', '<leader>a', 'DO<Esc>p') -- cut to end of line and paste above
map('n', '<leader>e', 'DjA<Space><Esc>p') -- cut to end of line and paste at end of line below

-- truezen
map('n', '<leader>m', ':TZFocus<CR>') -- toggle full screen
map('n', '<leader>z', ':TZAtaraxis<CR>') -- toggle zen mode
map('n', '<leader>c', ':TZMinimalist<CR>') -- toggle minimal mode
