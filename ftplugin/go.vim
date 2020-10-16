" Run goimports along gofmt on each save
let g:go_fmt_command = "goimports"

" Automatically get signature/type info for object under cursor
let g:go_auto_type_info = 1

" Enable metalinter with all options and run on each save
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1

" Disable Ctrl-t keybinding to use my NerdTree shortcut
let g:go_def_mapping_enabled = 0

" Set tab display to 4 spaces
setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4

