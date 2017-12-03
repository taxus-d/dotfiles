" include pod.vim syntax file with perl.vim
let perl_include_pod=1    
" highlight complex expressions such as @{[$x, $y]}
let perl_extended_vars=1    
" use more context for highlighting
let perl_sync_dist=250  
" nicer strings
let perl_string_as_statement=1

let perl_fold=1
let perl_fold_blocks = 1
" let sh_fold_enabled=1


set foldmethod=syntax
set foldlevelstart=1

setlocal iskeyword+=:
compiler perl

setlocal expandtab shiftwidth=4 tabstop=8 formatoptions+=croq 
setlocal softtabstop=4 smartindent

" my perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

" Tidy selected lines (or entire file) with _t:
" nnoremap <silent><leader>t :%!perltidy -q<Enter>
" vnoremap <silent><leader>t :!perltidy -q<Enter>
" better use formatprg
set formatprg=perltidy\ -q


" Deparse obfuscated code
nnoremap <silent><leader>d :.!perl -MO=Deparse 2>/dev/null<cr>
vnoremap <silent><leader>d :!perl -MO=Deparse 2>/dev/null<cr>
" setlocal omnifunc=syntaxcomplete#Complete
