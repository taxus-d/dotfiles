" ============================================
" Settings for various stuff
" extracted from .vimrc
" ============================================

fun! tconfig#stuff#Syntastic() "{{{
    " these 3 options have been included in vim-airline already {{{
    "set statusline+=%#warningmsg#
    "set statusline+=%{SyntasticStatuslineFlag()}
    "set statusline+=%*
    "}}}

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    let g:syntastic_cpp_checkers = ['clang_check']
    let g:syntastic_cpp_compiler = 'clang'
    "let g:syntastic_cpp_compiler_options = '-std=c++11'

    let g:syntastic_fortran_include_dirs = ['/usr/include/fgsl/']

    "let g:syntastic_cpp_compiler_options = ' -std=c++11'

    let g:syntastic_enable_perl_checker = 1
    let g:syntastic_perl_checkers = ['perlcritic']
    let g:syntastic_perl_perlcritic_thres = 1
    let g:syntastic_python_pylint_exe = 'pylint3'
    let g:syntastic_python_checkers=['flake8']
endf "}}}
fun! tconfig#stuff#ale() "{{{
    let g:ale_linters = {
                \   'tex': [''],
                \   'plaintex' : [''],
                \   'html' : [''],
                \}
"                 \   'python':['']
"
    let g:ale_fixers = {
                \   'python': ['black'],
                \}
    let g:ale_sign_column_always = 1
    let g:ale_sign_error = '●'
    let g:ale_sign_warning = '⪼'
    let g:ale_fortran_gcc_options = "-Wall -std=f2008 -pedantic -cpp -Wimplicit-interface -Wcompare-reals"
    let g:ale_python_flake8_options = '--ignore=E251,E226,E221,E266,E121,E126,E203,E501'
    let g:ale_lint_on_text_changed = 'normal'
    let g:ale_lint_on_insert_leave = 1

endf "}}}
fun! tconfig#stuff#NERDComment() "{{{
    " Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 1
    " Align line-wise comment delimiters flush left instead of following code indentation
    let g:NERDDefaultAlign = 'start'
    " Add your own custom formats or override the defaults
    " let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
    " Allow commenting and inverting empty lines (useful when commenting a region)
    let g:NERDCommentEmptyLines = 1
    " Enable trimming of trailing whitespace when uncommenting
    let g:NERDTrimTrailingWhitespace = 1
    let g:NERDCustomDelimiters = {
                \ 'forth': { 'left': '\', 'leftAlt': '( ', 'rightAlt': ' )' },
                \ 'fortran': { 'left': '!', 'leftAlt': 'c'},
                \ }
    imap <leader>ch <plug>NERDCommenterInsert
endf "}}}
fun! tconfig#stuff#delimitMate() "{{{
    let g:delimitMate_expand_cr=1
endf "}}}
fun! tconfig#stuff#YCM() "{{{
    let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
    if !exists('g:ycm_semantic_triggers')
        let g:ycm_semantic_triggers = {}
    endif
    let g:ycm_autoclose_preview_window_after_completion=1
    map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
    let g:ycm_semantic_triggers.tex = [
                \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
                \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
                \ 're!\\hyperref\[[^]]*',
                \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
                \ 're!\\(include(only)?|input){[^}]*',
                \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
                \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
                \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
                \ 're!\\usepackage(\s*\[[^]]*\])?\s*\{[^}]*',
                \ 're!\\documentclass(\s*\[[^]]*\])?\s*\{[^}]*',
                \ 're!\\[A-Za-z]*',
                \ ]

endf "}}}
fun! tconfig#stuff#neocomplete() "{{{
    if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = {}
    endif
    let g:neocomplete#sources#omni#input_patterns.tex =
                \ '\v\\%('
                \ . '\a*cite\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
                \ . '|\a*ref%(\s*\{[^}]*|range\s*\{[^,}]*%(}\{)?)'
                \ . '|hyperref\s*\[[^]]*'
                \ . '|includegraphics\*?%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
                \ . '|%(include%(only)?|input)\s*\{[^}]*'
                \ . '|\a*(gls|Gls|GLS)(pl)?\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
                \ . '|includepdf%(\s*\[[^]]*\])?\s*\{[^}]*'
                \ . '|includestandalone%(\s*\[[^]]*\])?\s*\{[^}]*'
                \ . ')'

endf "}}}
fun! tconfig#stuff#slimevim() "{{{
    let g:slime_target = "tmux"
    let g:slime_paste_file = "/tmp/.slime_paste"
    let g:slime_no_mappings = 1
    let g:slime_python_ipython = 1
    xmap <leader>s <Plug>SlimeRegionSend
    nmap <leader>s <Plug>SlimeMotionSend
    nmap <leader>sp <Plug>SlimeParagraphSend
    nmap <leader>ss <Plug>SlimeLineSend
endf "}}}
fun! tconfig#stuff#floaterm() "{{{
    let g:floaterm_keymap_toggle = '<Leader>tt'
    let g:floaterm_position = 'bottom'
    let g:floaterm_autoclose = 1
    let g:floaterm_title = ""
    let g:floaterm_width = 0.9
    let g:floaterm_height = 0.4
endf "}}}

fun! tconfig#stuff#MarkdownPreview() "{{{
    let g:mkdp_markdown_css = expand('~/notes/blags/qua.name/Moltenburan/css/buran.css')
"     let g:mkdp_browser = 'ffapp'
endf "}}}
" vim: foldmethod=marker foldlevel=0
