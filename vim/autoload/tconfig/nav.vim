" ============================================
" Settings for code/project navigation plugins
" extracted from .vimrc
" ============================================

fun! tconfig#nav#Tagbar() "{{{
    noremap <F4> :TagbarToggle<CR>
    let g:tagbar_autofocus = 1 " автофокус на Tagbar при открытии
endf "}}}
fun! tconfig#nav#NERDTree() "{{{
    " показать NERDTree на F3
    noremap <F3> :NERDTreeToggle<CR>
    " игнорируемые файлы с расширениями
    let g:NERDTreeIgnore = ['\~$', 
                \ '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', 
                \ '\.o$', '\.mod$' ]  
endf "}}}
fun! tconfig#nav#TaskList() "{{{
" отобразить список тасков на F2
    noremap <F2> :TaskList<CR>
endf "}}}

fun! tconfig#nav#CtrlP() "{{{
    if executable('ag')
        " Use ag in CtrlP for listing files. Lightning fast and
        "     respects .gitignore
        let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

        " ag is fast enough that CtrlP doesn't need to cache
        let g:ctrlp_use_caching = 0
    endif
endf "}}}
" vim: foldmethod=marker foldlevel=0
