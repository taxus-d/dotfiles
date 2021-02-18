" let g:fortran_do_enddo=0
" let g:fortran_more_precise=0
" let g:fortran_fold=0
" let g:fortran_fold_conditionals=0
" let g:fortran_fold_multilinecomments=0
" let g:fortran_fixed_source=1

setlocal shiftwidth=4
setlocal foldmethod=syntax
setlocal foldnestmax=2
setlocal omnifunc=syntaxcomplete#Complete
" set efm=%E%f:%l.%c:,%E%f:%l:,%C,%C%p%*[0123456789^],%Z%t:\ %m,%C%.%#
" set efm=%E%f:%l.%c:,%E%f:%l:,%C,%C%p%*[0123456789^],%Z%t%*:\ %m,%C%.%#
" for ifort
compiler gfortran
" set efm=%E%.%#rror:\ %f\\,\ line\ %l:\ %m,\%-C%.%#,\%-Z\%p^

noremap <F12> :! ctags -R --exclude=backups --fortran-kinds=+i 
                \ --fields=+iaS --sort=yes . <CR><CR>
inoremap <F12> <Esc>:! ctags -R --exclude=backups --fortran-kinds=+i 
                \ --fields=+iaS --sort=yes . <CR><CR>
