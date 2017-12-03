" **********************************
" * extracted from too loong vimrc *
" **********************************

"=====================================================
" Python-mode settings
"=====================================================
"{{{
function! SetupPyModeOld() "{{{
    " отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
    let g:pymode_rope = 0
    let g:pymode_rope_completion = 0
    let g:pymode_rope_complete_on_dot = 0

    " документация
    let g:pymode_doc = 0
    let g:pymode_doc_key = 'K'

    " проверка кода
    let b:syntastic_mode="passive" " не нужен
    let g:pymode_lint = 1
    let g:pymode_lint_checker = "flake8"
    let g:pymode_lint_ignore="E231,W601,C0110"
    " провека кода после сохранения
    let g:pymode_lint_write = 1

    " поддержка virtualenv
    let g:pymode_virtualenv = 1

    " установка breakpoints
    let g:pymode_breakpoint = 1
    let g:pymode_breakpoint_key = '<leader>b'

    " подсветка синтаксиса
    let g:pymode_syntax = 1
    let g:pymode_syntax_all = 1
    let g:pymode_syntax_indent_errors = g:pymode_syntax_all
    let g:pymode_syntax_space_errors = g:pymode_syntax_all

    " отключить autofold по коду
    let g:pymode_folding = 0

    " возможность запускать код
    let g:pymode_run = 0 
    let g:jedi#popup_select_first = 0 " Disable choose first function/method at autocomplete
    let g:jedi#popup_on_dot = 0 " Итогда тормозитъ

endfunction "}}}

" pymode ненужен нафиг, по-моему.
function! SetupPyMode() "{{{
    let g:jedi#popup_select_first = 0 " Disable choose first function/method at autocomplete
    let g:jedi#popup_on_dot = 0
endfunction "}}}

function! SetupPyEnv()
" Подсвечиваем все что можно подсвечивать
    let g:python_highlight_all = 1
" ConqueTerm
" запуск интерпретатора на F5
    nnoremap <F5> :ConqueTermSplit ipython3<CR>

    " а debug-mode на <F6>
    nnoremap <F6> :exe "ConqueTermSplit ipython3 " . expand("%")<CR>
    let g:ConqueTerm_StartMessages = 0
    let g:ConqueTerm_CloseOnEnd = 0

    " проверка кода в соответствии с PEP8 
    noremap <buffer> <leader>ch :SyntasticCheck <CR>

    "Запуск
    inoremap <F8> <Esc>:!clear; echo; echo; python3 %<CR>a
    nnoremap <F8> :!clear; echo; echo; python3 %<CR>
endfunction
"}}}

" Собственно, включаем всё это
setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 
setlocal formatoptions+=croq smartindent
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class,with
call SetupPyModeOld()
call SetupPyEnv()
