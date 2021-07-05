lua require("a.telescope")

" dotfiles
nnoremap <silent> <leader>vrc :lua require('a.telescope').search_dotfiles()<CR>

" file pickers
nnoremap <silent> <C-p> :lua require('a.telescope').project_files()<CR>
nnoremap <silent> <C-f> :lua require('telescope.builtin').live_grep()<CR>
nnoremap <silent> <leader>f :lua require('telescope.builtin').file_browser()<CR>

" vim pickers
nnoremap <silent> <C-b> :lua require('telescope.builtin').buffers()<CR>
nnoremap <silent> <leader>tm :lua require('telescope.builtin').marks()<CR>
nnoremap <silent> <leader>th :lua require('telescope.builtin').help_tags()<CR>
nnoremap <silent> <leader>tc :lua require('telescope.builtin').colorscheme()<CR>

" git
nnoremap <silent> <leader>gst :lua require('telescope.builtin').git_status()<CR>
nnoremap <silent> <leader>gc :lua require('telescope.builtin').git_commits()<CR>

