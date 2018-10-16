" ============================================
" Settings for languages plugins
" extracted from .vimrc
" ============================================

function! tconfig#lang#ConfigPythonMode() "{{{
    " отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
    let g:pymode_rope = 0
    let g:pymode_rope_completion = 0
    let g:pymode_rope_complete_on_dot = 0

    let g:pymode_python = 'python3'

    " документация
    let g:pymode_doc = 1
    let g:pymode_doc_key = 'K'

    " проверка кода (тоже не нужна, ale)
    let g:pymode_lint = 1
    let g:pymode_lint_checkers = ['pyflakes', 'pep8'] 
    let g:pymode_lint_ignore=["E231", 'E221', 'E251', "W601", "C0110"]

    " провека кода после сохранения
    let g:pymode_lint_write = 1

    " поддержка virtualenv
    let g:pymode_virtualenv = 0

    " установка breakpoints
    let g:pymode_breakpoint = 1
    let g:pymode_breakpoint_key = '<leader>b'

    " подсветка синтаксиса
    let g:pymode_syntax = 1
    let g:pymode_syntax_all = 1
    let g:pymode_syntax_indent_errors = g:pymode_syntax_all
    let g:pymode_syntax_space_errors = g:pymode_syntax_all
    let g:pymode_indent = 1

    let g:pymode_folding = 0
    
    let g:pymode_motion = 1

    " возможность запускать код
    let g:pymode_run = 0 
    
    let g:pymode_lint_cwindow = 0
    
    let g:pymode_lint_todo_symbol = '⪼'
    let g:pymode_lint_comment_symbol = '✏'
    let g:pymode_lint_visual_symbol = 'RR'
    let g:pymode_lint_error_symbol = '●'
    let g:pymode_lint_info_symbol  = 'ⓘ'
    let g:pymode_lint_pyflakes_symbol = 'FF'


endfunction "}}}
fun! tconfig#lang#ConfigJedi() "{{{
    " Disable choose first function/method at autocomplete
    let g:jedi#popup_select_first = 0 
    let g:jedi#popup_on_dot = 1 " Итогда тормозитъ
    let g:jedi#show_call_signatures = "2"
endf "}}}
fun! tconfig#lang#ConfigVimtex() "{{{
    let g:vimtex_view_method='zathura'
"     let g:vimtex_latexmk_options='-pdf -verbose -pdflatex="pdflatex --interaction=nonstopmode --synctex=1 --file-line-error "'
    let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'jobs',
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-pdf',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \   '-shell-escape'
    \ ],
    \}
    let g:vimtex_delim_toggle_mod_list = [
      \ ['\left', '\right'],
      \ ['\bigl', '\bigr'],
      \ ['\Bigl', '\Bigr'],
      \ ['\biggl', '\biggr'],
      \ ['\Biggl', '\Biggr'],
      \]
"     let g:loaded_matchparen = 1
    let g:vimtex_matchparen_enabled=0 
    let g:vimtex_motion_enabled = 0
    let g:vimtex_quickfix_mode = 0
    let g:vimtex_imaps_leader = '@'
    
    let g:vimtex_fold_enabled =1
    let g:vimtex_fold_manual = 1
"     let g:vimtex_fold_envs = 0
    let g:vimtex_fold_types = {
                \ 'preamble' : {'enabled' : 0},
                \ 'envs'     : {'enabled' : 0},
                \ 'sections'  : {'sections': [
                    \ "section",
                    \ "paragraph",
                    \] }
                \}

"     let g:vimtex_fold_sections = [
"         \ "section",
"         \ "paragraph",
"       \ ]
    let g:vimtex_quickfix_open_on_warning=0
endf "}}}
fun! tconfig#lang#ConfigClosetag() "{{{
    let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.xml"
endf "}}}
" vim: foldmethod=marker foldlevel=0
