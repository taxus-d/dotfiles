" ============================================
" Settings for appearance plugins
" extracted from .vimrc
" ============================================

fun! tconfig#appear#IndentLine() "{{{
"     " Vim
"     let g:indentLine_color_term = 239
"     "GVim
"     let g:indentLine_color_gui = '#A4E57E'
"     " none X terminal
"     let g:indentLine_color_tty_light = 4 " (default: 4)
"     let g:indentLine_color_dark = 2 " (default: 2)
    if has("multi_byte")
        let g:indentLine_char = '┊'
    endif
    let g:indentLine_fileTypeExclude = ['vimwiki', 'text']
    let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*']
"     let g:indentLine_leadingSpaceEnabled=1
    let g:indentLine_leadingSpaceChar='·'
endf "}}}
fun! tconfig#appear#Airline() "{{{
    set laststatus=2
    let g:airline_powerline_fonts = 1
    let g:airline_theme='zenburn' " 'gruvbox  'base16'  'zenburn' 
    let g:airline_exclude_preview=1
    if has('gui_running')
        let g:airline_powerline_fonts = 1
    else
        let g:airline_powerline_fonts = 1
    endif
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline#extensions#whitespace#enabled = 0
    let g:airline#extensions#wordcount#enabled = 0
    let g:airline#extensions#tagbar#enabled = 1
    let g:airline#extensions#keymap#enabled = 0
endf "}}}
fun! tconfig#appear#RainbowParen() "{{{
"    let g:rbpt_colorpairs = [
"        \ ['brown',       'RoyalBlue3'],
"        \ ['Darkblue',    'SeaGreen3'],
"        \ ['darkgray',    'DarkOrchid3'],
"        \ ['darkgreen',   'firebrick3'],
"        \ ['darkcyan',    'RoyalBlue3'],
"        \ ['darkred',     'SeaGreen3'],
"        \ ['darkmagenta', 'DarkOrchid3'],
"        \ ['brown',       'firebrick3'],
"        \ ['gray',        'RoyalBlue3'],
"        \ ['black',       'SeaGreen3'],
"        \ ['darkmagenta', 'DarkOrchid3'],
"        \ ['Darkblue',    'firebrick3'],
"        \ ['darkgreen',   'RoyalBlue3'],
"        \ ['darkcyan',    'SeaGreen3'],
"        \ ['darkred',     'DarkOrchid3'],
"        \ ['red',         'firebrick3'],
"        \ ]
"     let g:lisp_rainbow=1
endf "}}}

" vim: foldmethod=marker foldlevel=0
