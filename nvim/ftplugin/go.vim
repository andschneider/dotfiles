" Run goimports along gofmt on each save
let g:go_fmt_command = "goimports"

" Automatically get signature/type info for object under cursor
let g:go_auto_type_info = 1

" Show diagnostics
" 0 - disabled, 1 - errors only, 2 - errors and warnings
let g:go_diagnostics_level = 2

" Enable metalinter and run on each save, but only run errcheck
" if `:GoMetaLinter` is called
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']

" Set tab display to 4 spaces
setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4

