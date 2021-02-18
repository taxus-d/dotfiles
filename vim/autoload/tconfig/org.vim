" ============================================
" Settings for org plugins
" extracted from .vimrc
" ============================================

fun! tconfig#org#VimWiki() "{{{
    let g:vimwiki_folding='' "list'
    let g:vimwiki_toc_header='Содержание'
    let g:vimwiki_hl_headers = 1
    let g:vimwiki_hl_cb_checked = 1
"     let g:vimwiki_listsyms = ' ○◐●✓'
    let g:vimwiki_conceallevel=2
    let g:vimwiki_valid_html_tags="b,i,s,u,sub,sup,kbd,br,hr,details,summary,div"
    
    let g:tagbar_type_vimwiki = {
            \   'ctagstype': 'vimwiki'
            \ , 'kinds': ['h:header']
            \ , 'sro': '&&&'
            \ , 'kind2scope': {'h': 'header'}
            \ , 'sort': 0
            \ , 'ctagsbin': '~/.vim/bundle/vimwiki/plugin/vwtags.py'
            \ , 'ctagsargs': 'default'
            \ }

    let g:vimwiki_diary_months = {
                \ 1: 'Январь', 2: 'Февраль', 3: 'Март',
                \ 4: 'Апрель', 5: 'Май', 6: 'Июнь',
                \ 7: 'Июль', 8: 'Август', 9: 'Сентябрь',
                \ 10: 'Октябрь', 11: 'Ноябрь', 12: 'Декабрь'
                \ }
    let wiki = {}
    let wiki.path             = "$NOTES_DIR/vimwiki/"
    let wiki.path_html        = "$NOTES_DIR/vimwiki/export/html"
    let wiki.template_path    = "$NOTES_DIR/vimwiki/export/vimwiki_templates/"
    let wiki.template_default = 'plain'
    let wiki.template_ext     = '.tpl'
    let wiki.css_name         = 'export/vimwiki_stylesheets/plain.css'

    let exwiki = {}
    let exwiki.path             = "$ASTROCONSP_DIR"
    let exwiki.path_html        = "$ASTROCONSP_DIR/vimwiki_html" "for proper nesting
    let exwiki.template_path    = "$ASTROCONSP_DIR/tools/web-related/tpl"
    let exwiki.template_default = 'plain'
    let exwiki.template_ext     = '.tpl'
    let exwiki.css_name         = 'tools/web-related/css/plain.css'
    let exwiki.listsyms = ' .oOX'
    
    let antares_wiki = {}
    let antares_wiki.path             = $ANTARES_DIR
    let antares_wiki.path_html        = $ANTARES_DIR."/rendered/html" "for proper nesting
    let antares_wiki.template_path    = $ANTARES_DIR."/rendered/html/tpl"
    let antares_wiki.template_default = 'plain'
    let antares_wiki.template_ext     = '.tpl'
    let antares_wiki.css_name         = 'css/plain.css'
    let antares_wiki.listsyms = ' .oOX'
    let antares_wiki.diary_rel_path   = 'пары'
    let antares_wiki.diary_index   = 'список_пар'
    let antares_wiki.diary_header   = 'Занятия'
"     let wiki.nested_syntaxes = {
"                 \ 'python' : 'python',
"                 \ 'c++' : 'cpp',
"                 \ 'p6' : 'perl6',
"                 \}
    let g:vimwiki_list = [wiki, antares_wiki]

    let g:vimwiki_ext2syntax = {'.md': 'markdown',
                \ '.mkd': 'markdown'}


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

