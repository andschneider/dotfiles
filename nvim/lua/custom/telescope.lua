local M = {}

-- if in a git repo, use git_files(), otherwise find_files()
-- based on: https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes
M.project_files = function()
    local opts = {}
    local ok = pcall(require'telescope.builtin'.git_files, opts)
    if not ok then require'telescope.builtin'.find_files(opts) end
end

M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        -- show dotfiles, but ignore the .git directory
        find_command = {'rg', '--files', '--hidden', '--iglob', '!.git'},
        prompt_title = ". dotfiles .",
        cwd = "$HOME/Github/dotfiles/"
    })
end

return M
