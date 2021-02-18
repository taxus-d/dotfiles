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
    let g:NERDTreeBookmarksFile = $XDG_CONFIG_HOME. "/NERDTree/bookmarks"
endf "}}}
fun! tconfig#nav#TaskList() "{{{
" отобразить список тасков на F2
    noremap <F2> :TaskList<CR>
endf "}}}

fun! tconfig#nav#CtrlP() "{{{
    if executable('ag')
        " Use ag in CtrlP for listing files. Lightning fast and
        "     respects .gitignore
      let g:ctrlp_working_path_mode = 'rc'
"       let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
      let g:ctrlp_user_command = 'rg %s --files --color=never --glob "" '

        " ag is fast enough that CtrlP doesn't need to cache
"         let g:ctrlp_use_caching = 0
    endif
endf "}}}
fun! tconfig#nav#Matchup() "{{{
    let g:matchup_matchparen_offscreen={'method': 'popup'}
    let g:matchup_matchparen_deferred=1
endf "}}}

fun! tconfig#nav#UndoTree() "{{{
    let g:undotree_WindowLayout = 4
    let g:undotree_RelativeTimestamp = 0
endf "}}}
" vim: foldmethod=marker foldlevel=0
