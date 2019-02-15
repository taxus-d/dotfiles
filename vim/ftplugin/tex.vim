
" function! s:PreFtLatexOld() "{{{
"     " to setup replacing symbols(\alpha -> α)
"     let g:tex_conceal=''
"     " useless when real conceal power is used
"     let g:indentLine_enabled = 1
"     "hi Conceal guibg=NONE guifg=Green
"     let g:tex_flavor='latex'
"     let b:syntastic_mode="passive"
"     let g:Tex_ViewRule_pdf='mupdf'
"     let g:Tex_MultipleCompileFormats='dvi,pdf'
"     "let g:Tex_CompileRule_pdf = 'pdflatex --interaction=nonstopmode -file-line-error-style $*'
"     let g:Tex_SmartKeyQuote = 0 
" endfunction "}}}
" function! s:PreFtLatexClass() "{{{
"     " to prevent replacing symbols(\alpha -> α)
"     let g:tex_conceal=''
"     let g:tex_flavor='latex'
"     let b:syntastic_mode="passive"
"     "let g:Tex_ViewRule_pdf=''
"     "let g:Tex_CompileRule_pdf = ''
"     "TTarget pdf 
" endfunction "}}}
" function! s:PastFtLatex() "{{{
"     setlocal omnifunc=syntaxcomplete#Complete
"     let g:tex_conceal=''
"     " to use pdflatex to compile
" "     TTarget pdf
"     setlocal grepprg=grep\ -nH\ $*
"     " this is mostly a matter of taste. But LaTeX looks good with just a bit
"     " of indentation.
"     setlocal tabstop=2 shiftwidth=2 softtabstop=2 
"     " TIP: if you write your \label's as \label{fig:something}, then if you
"     " type in \ref{fig: and press <C-n> you will automatically cycle through
"     " all the figure labels. Very useful!
"     setlocal iskeyword+=: 
" "     hi Conceal guibg=NONE guifg=LightGray
"     setlocal cole=2
"     setlocal concealcursor="nc"
"     if g:tex_conceal != ''
"         syn match texMathSymbol '\\Rightarrow\>' contained conceal cchar=⇒
"         syn match texMathSymbol '\\leqslant\>' contained conceal cchar=⩽ 
"         syn match texMathSymbol '\\geqslant\>' contained conceal cchar=⩾ 
"         syn match texMathSymbol '\\varkappa\>' contained conceal cchar=ϰ 
"     endif
"     call IMAP(g:Tex_Leader.'w', '\omega', 'tex')
"     call IMAP(g:Tex_Leader.'<', '\leqslant', 'tex')
"     call IMAP(g:Tex_Leader.'>', '\geqslant', 'tex')
"     call IMAP('=>arr', '\Rightarrow', 'tex')
"     call IMAP('<=>arr', '\Leftrightarrow', 'tex')
"     call IMAP('<=arr', '\Leftarrow', 'tex')
"     call IMAP(',,,', ', \dotsc , ', 'tex')
"     let g:Tex_Env_{'defn'}="\\begin{defn}<++>\\label{defn:<+name+>}\n<++>\n\\end{defn}\n<++>"
"     let g:Tex_Env_{'thrm'}="\\begin{thrm}<++>\\label{thrm:<+name+>}\n<++>\n\\end{thrm}\n<++>"
"     let g:Tex_Env_{'stat'}="\\begin{stat}<++>\\label{stat:<+name+>}\n<++>\n\\end{stat}\n<++>"
"     let g:Tex_Env_{'lem'}="\\begin{lem}<++>\\label{lem:<+name+>}\n<++>\n\\end{lem}\n<++>"
"     nnoremap <leader>lfr :call <SID>PreviewLatex(@")<cr> 
" endfunction "}}}
" 
function! s:PreviewLatex(str) "{{{
    silent !clear
    let tmp = 'easyltx -i '.shellescape(a:str).' &'
    "echo tmp
    echo system(tmp)

    let proc=system("ps ax | grep '[f]eh /tmp/easyltx_files/easytexput1.png -R 1'")
    if empty(proc)
        execute '!feh /tmp/easyltx_files/easytexput1.png -R 1 &'
    endif
endfunction "}}}


fun! s:ToggleColon() "{{{
    if exists('b:keyword_colon')
        setlocal iskeyword-=:
        unlet b:keyword_colon
    else
        setlocal iskeyword+=:
        let b:keyword_colon=1
    endif
endf "}}}

fun! s:ExtractParLabel() "{{{
    let line = getline('.')
    let lab = matchstr(line, '\v\{[^:]+:\zs[[:alnum:]]+::[[:alnum:]]+\ze[^}]*\}')
    return lab
endf "}}}

let g:tex_conceal=''
let g:tex_flavor='latex'
let g:tex_fold_enabled=1
let g:tex_fast="bmMprSvV"
"   b : allow bold and italic syntax
"   c : allow texComment syntax
"   m : allow texMatcher syntax (ie. {...} and [...])
"   M : allow texMath syntax
"   p : allow parts, chapter, section, etc syntax
"   r : allow texRefZone syntax (nocite, bibliography, label, pageref, eqref)
"   s : allow superscript/subscript regions
"   S : allow texStyle syntax
"   v : allow verbatim syntax
"   V : allow texNewEnv and texNewCmd syntax

"     hi Conceal guibg=NONE guifg=LightGray
setlocal cole=2
setlocal concealcursor="nc"

if g:tex_conceal != ''
    syn match texMathSymbol '\\Rightarrow\>' contained conceal cchar=⇒
    syn match texMathSymbol '\\leqslant\>' contained conceal cchar=⩽
    syn match texMathSymbol '\\geqslant\>' contained conceal cchar=⩾
    syn match texMathSymbol '\\varkappa\>' contained conceal cchar=ϰ
endif

syn sync maxlines=100
syn sync minlines=20

let b:syntastic_mode="passive"
let b:delimitMate_quotes="$"
let b:delimitMate_matchpairs = "{:}"

setlocal foldlevel=0

" fixing grep
setlocal grepprg=grep\ -nH\ $*
" this is mostly a matter of taste. But LaTeX looks good with just a bit
" of indentation.
setlocal tabstop=2 shiftwidth=2 softtabstop=2 
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
nnoremap <expr><leader>lfr <SID>PreviewLatex(@")
inoremap <silent><c-l> <c-o>:let @p=<SID>ExtractParLabel()<cr>

if has('nvim')
    inoremap <buffer> <M-c> <esc>i\mathcal <esc>ea
    inoremap <buffer> <M-b> <esc>i\mathbf  <esc>ea
    inoremap <buffer> <M-r> <esc>i\mathrm  <esc>ea
    inoremap <buffer> <M-p> <esc>i\mathpzc <esc>ea
    inoremap <buffer> <M-i> \item<esc>==ea 
    inoremap <M-;> <C-o>:call <SID>ToggleColon() <cr>
else
    inoremap <buffer> ã <esc>i\mathcal <esc>ea
    inoremap <buffer> â <esc>i\mathbf  <esc>ea
    inoremap <buffer> ò <esc>i\mathrm  <esc>ea
    inoremap <buffer> ð <esc>i\mathpzc <esc>ea
    inoremap <buffer> é \item<esc>==ea 
    inoremap » <C-o>:call <SID>ToggleColon() <cr>
endif
let g:vimtex_imaps_enabled=0

set iskeyword +=@-@
set iskeyword -=_
source ~/.vim/abbrev/tex.vim

" if ! exists('did_set_vimtex_imaps')
"     call vimtex#imaps#add_map({
"                 \ 'lhs' : '-',
"                 \ 'rhs' : '\overline{'
"                 \})
"     call vimtex#imaps#add_map({
"                 \ 'lhs' : '_',
"                 \ 'rhs' : '\underline{'
"                 \})
"     call vimtex#imaps#add_map({
"                 \ 'lhs' : '~',
"                 \ 'rhs' : '\widetilde{'
"                 \})
"     call vimtex#imaps#add_map({
"                 \ 'lhs' : 'o',
"                 \ 'rhs' : '\circ'
"                 \})
"     let did_set_vimtex_imaps=1
" endif



" setlocal omnifunc=syntaxcomplete#Complete
" vim: foldmethod=marker
