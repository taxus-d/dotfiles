" ============================================
" Settings for org plugins
" extracted from .vimrc
" ============================================

fun! tconfig#org#VimWiki() "{{{
    let g:vimwiki_folding='' "list'
    let g:vimwiki_toc_header='Содержание'
    let g:vimwiki_hl_headers = 1
    let g:vimwiki_hl_cb_checked = 1
    let g:vimwiki_listsyms = ' ○◐●✓'
    let g:vimwiki_conceallevel=2
    
    let g:tagbar_type_vimwiki = {
            \   'ctagstype': 'vimwiki'
            \ , 'kinds': ['h:header']
            \ , 'sro': '&&&'
            \ , 'kind2scope': {'h': 'header'}
            \ , 'sort': 0
            \ , 'ctagsbin': '/home/iliya/.vim/bundle/vimwiki/plugin/vwtags.py'
            \ , 'ctagsargs': 'default'
            \ }

    let g:vimwiki_diary_months = {
                \ 1: 'Январь', 2: 'Февраль', 3: 'Март',
                \ 4: 'Апрель', 5: 'Май', 6: 'Июнь',
                \ 7: 'Июль', 8: 'Август', 9: 'Сентябрь',
                \ 10: 'Октябрь', 11: 'Ноябрь', 12: 'Декабрь'
                \ }
    let wiki = {}
    let wiki.path  =  '~/notes/vimwiki'
    let wiki.path_html  = '~/notes/vimwiki/export/html'
    let wiki.nested_syntaxes = {
                \ 'python' : 'python', 
                \ 'c++' : 'cpp',
                \ 'p6' : 'perl6',
                \}
    let g:vimwiki_list = [wiki]


    " Use Vim to open external files with the 'vim:' scheme.  E.g.:
    "   1) [[vim:~/Code/PythonProject/abc123.py]]
    "   2) [[vim:./|Wiki Home]]
    function! VimwikiLinkHandler(link) "{{{
        let link = a:link
        if link =~# '^vim:'
            let link = 'file'.link[3:]
        else
            return 0
        endif
        let link_infos = vimwiki#base#resolve_link(link)
        if link_infos.filename == ''
            echomsg 'Vimwiki Error: Unable to resolve link!'
            return 0
        else
            exe 'tabnew ' . fnameescape(link_infos.filename)
            return 1
        endif
    endfunction "}}}

endf "}}}

fun! tconfig#org#Calendar() "{{{
    let g:calendar_monday = 1
endf "}}}

fun! tconfig#org#Mathematic() "{{{
    nnoremap <M-m> :call tconfig#org#ToggleMathKeymap() <cr> 
endf "}}}
fun! tconfig#org#ToggleMathKeymap() "{{{
    if exists('g:math_keymap')
        setlocal keymap=russian-jcukenwin
        unlet g:math_keymap
    else
        setlocal keymap=mathematic
        let g:math_keymap = 1
    endif
endf "}}}

" vim: foldmethod=marker foldlevel=0

