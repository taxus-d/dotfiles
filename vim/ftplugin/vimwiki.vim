setlocal concealcursor=nc nowrap shiftwidth=2
let b:delimitMate_matchpairs = "(:),[:]"
let g:tex_conceal=''

nmap <leader>P <Plug>MarkdownPreviewToggle

ALEDisableBuffer
let b:ale_lint_on_text_changed=0
let b:ale_lint_on_insert_leave=0
let b:ale_lint_on_enter=0
let b:ale_lint_on_save=0
let b:ale_lint_on_filetype_changed=0
