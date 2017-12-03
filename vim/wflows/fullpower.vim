"=====================================================
" plugins {{{

filetype off
call plug#begin('~/.vim/bundle')

"---------=== Code/project navigation ===-------------
" Project and file navigation
Plug 'scrooloose/nerdtree' | call tconfig#nav#NERDTree()
" Class/module browser
Plug 'majutsushi/tagbar', {'on' : 'TagbarToggle'} | call tconfig#nav#Tagbar()
Plug 'ctrlpvim/ctrlp.vim' | call tconfig#nav#CtrlP()    " file navigation
" Pending tasks List
" Plug 'fisadev/FixedTaskList.vim' | call tconfig#nav#TaskList()
Plug 'powerman/vim-plugin-viewdoc'    " doc viewer
"
"------------------=== Appearance ===----------------------
" Lean & mean status/tabline for vim
Plug 'vim-airline/vim-airline' | call tconfig#appear#Airline()
Plug 'vim-airline/vim-airline-themes'
" Plug 'kshenoy/vim-signature'          " show marks
" indentation guides
Plug 'Yggdroot/indentLine' | call tconfig#appear#IndentLine()
" Plugin 'mhinz/vim-startify'            " nice start screen
Plug 'junegunn/rainbow_parentheses.vim' 
"------------------=== Collaboration ===------------------
Plug 'tpope/vim-fugitive'                     " git integration
Plug 'Floobits/floobits-vim', {'on': []}  " floobits integration

"--------------=== Snippets support ===---------------
" Better snips manager
Plug 'SirVer/ultisnips' | call tconfig#snips#UltiSnips()
Plug 'honza/vim-snippets'		" snippets repo

"--------------=== Other useful stuff ===-------------
" display syntax errors 
" Plug 'scrooloose/syntastic', {'on' :[]} | call tconfig#stuff#Syntastic()
Plug 'w0rp/ale'   | call tconfig#stuff#ale()
" Plug 'rosenfeld/conque-term'      	" Consoles as buffers
" maps for commenting out
Plug 'scrooloose/nerdcommenter' | call tconfig#stuff#NERDComment()
" Plugin 'jiangmiao/auto-pairs'           " auto delimiters -> buggy with clang
" matching delimiters
Plug 'Raimondi/delimitMate' | call tconfig#stuff#delimitMate()
" Plug 'Valloric/YouCompleteMe' | call tconfig#stuff#YCM()
" Plug 'Shougo/neocomplete' | call tconfig#stuff#neocomplete()
" Plug 'Konfekt/FastFold', {'for': 'vimwiki'}
Plug 'jpalardy/vim-slime' | call tconfig#stuff#slimevim()

" Parentheses, brackets, quotes, XML tags, and more
Plug 'tpope/vim-surround'
" to make surround work properly
Plug 'tpope/vim-repeat' 

Plug 'tommcdo/vim-exchange'

Plug 'jamessan/vim-gnupg'
"---------------=== Languages support ===-------------
" --- python ---
" Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
" Plug 'klen/python-mode', {'for': 'python'}  | call tconfig#lang#ConfigPythonMode()
" Jedi-vim autocomplete plugin
Plug 'davidhalter/jedi-vim', {'for': 'python'} | call tconfig#lang#ConfigJedi() 
" Plug 'mitsuhiko/vim-jinja'		" Jinja support for vim
" Plug 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

" --- Latex ---
" Plug 'vim-latex/vim-latex'            " outdated
" Plug 'gerw/vim-latex-suite'           " latex support for vim
Plug 'lervag/vimtex' | call tconfig#lang#ConfigVimtex() " modern modular tex plugin
" , {'for' : ['tex', 'plaintex'] }
" --- Markdown ---
Plug 'godlygeek/tabular'              "nice, very nice alignment
Plug 'plasticboy/vim-markdown', {'for' : 'markdown'} | let g:vim_markdown_math=1

" --- C/C++ ---
"accurate clang completion for vim 
" Plug 'Rip-Rip/clang_complete', {'for' : 'cpp'} "YCM obsoletes that
" "Omni completion for c++ code
" Plug 'vim-scripts/OmniCppComplete' {'for' : 'cpp'}
Plug 'vim-scripts/STL-improved', {'for' : 'cpp'}

" --- XML ---
"xml featured support
Plug 'othree/xml.vim', {'for': 'xml'} 
" Close XML tags
Plug 'alvan/vim-closetag' | call tconfig#lang#ConfigClosetag()
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" --- Perl / Perl6 --
" advanced perl and pod hightlight
Plug 'vim-perl/vim-perl', {'for' : ['perl', 'vimwiki']}
Plug 'vim-perl/vim-perl6', {'for' : ['perl6', 'vimwiki']}
Plug 'c9s/perlomni.vim', {'for' : ['perl']}

" --- Fortran ---
"  rewrited, useless now
" Plug 'rbonvall/snipmate-snippets-fortran95' " code snippets

" --- R ----
Plug 'jalvesaq/Nvim-R', {'for' : 'r'}

" -------------=== Org features ===------------------
Plug 'vimwiki/vimwiki'  | call tconfig#org#VimWiki()
Plug 'mattn/calendar-vim', {'on' : 'Calendar' } | call tconfig#org#Calendar()
Plug 'Rykka/mathematic.vim'

"---------------=== ColorThemes === ------------------
Plug 'morhetz/gruvbox'
Plug 'zeis/vim-kolor'
Plug 'tomasr/molokai'
Plug 'sjl/badwolf'
Plug 'w0ng/vim-hybrid' | let g:hybrid_reduced_contrast=1
Plug 'chriskempson/tomorrow-theme'
" Plug 'darkspectrum'
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'
Plug 'the31k/vim-colors-tayra'
Plug 'tpope/vim-vividchalk'
Plug 'goatslacker/mango.vim'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/seoul256.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'jdkanani/vim-material-theme'
Plug 'vim-scripts/vilight.vim'
Plug 'rakr/vim-two-firewatch'
Plug 'rhysd/vim-color-spring-night' 

call plug#end() 

"}}}
"=====================================================
" generic options {{{
" turn full vimpower on
set nocompatible 
filetype plugin indent on
syntax on

" Vim variable cheatsheet {{{
" g:varname	 The variable is global
" s:varname	 The variable is local to the current script file
" w:varname	 The variable is local to the current editor window
" t:varname	 The variable is local to the current editor tab
" b:varname	 The variable is local to the current editor buffer
" l:varname	 The variable is local to the current function
" a:varname	 The variable is a parameter of the current function
" v:varname	 The variable is one that Vim predefines
" }}}

let $PATH .= ":".$HOME."/bin"
set shell=/bin/zsh

" no beeping and blinking
set noerrorbells visualbell t_vb=

set enc=utf-8	     " utf-8 по дефолту в файлах
set ls=2             " всегда показываем статусбар
set incsearch	     " инкреминтируемый поиск
set hlsearch	     " подсветка результатов поиска
set nu	             " показывать номера строк


set modeline
set modelines=1
" e.g /* vim: set ts=4 sw=4 sts=4 cin: */

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
  set mousemodel=popup
endif

"Автоотступ
set autoindent
" size of a hard tabstop
"set tabstop=4
" size of an <<indent>>
set shiftwidth=4 "nice default

" a combination of spaces and tabs are used to simulate tab stops at a width other than the (hard)tabstop
" set softtabstop=4
" make 'tab' insert indents instead of tabs at the beginning of a line
set smarttab
" always uses spaces instead of tab characters
set expandtab
" c indent mode
" set cin

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  set undofile		" keep an undo file (undo changes after closing)
endif
set history=50		" keep 50 lines of command line history

set backspace=indent,eol,start " fixing backspace 
set ruler                      " nice info in statusbar
set gcr=a:blinkon0             " turn OFF cursor blinking

" smooth scrolling (useful in case of fast terminal)
set ttyfast 
" redraw only when needed
set lazyredraw " very useful
" 3 lines per scroll
set ttyscroll=3

" open existing file
" if it is already opened in the buffer or in tab 
set switchbuf=usetab


set wildmenu

set backupdir=~/.local/vim-backups/backup//
set directory=~/.local/vim-backups/swp//
set undodir=~/.local/vim-backups/undo//

" remove 'Buffers' menu (useless) in presence of Ctrl-P
let no_buffers_menu=1

if executable('ag')
    "Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor
endif

"}}}
"=====================================================
" navigation maps "{{{
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Работа c буфферами {{{
" CTRL+Q - закрыть текущий буффер
nnoremap <C-q> :bd<CR> 	   
" Alt-k - next buffer
nnoremap <M-k> :bnext <CR>  
" Alt-j - previous buffer
nnoremap <M-j> :bprevious <CR>      
"}}}

" Tabs setup {{{
" tab management, browser-like
" new tab page
nnoremap <C-S-t> :tabe <CR> 
" close tab page
nnoremap <C-x> :tabc <CR> 
" next tab page
nnoremap <C-PageUp> :tabn <CR> 
" previous tab page 
nnoremap <C-PageDown> :tabp <CR> 
"}}}
"}}}
"=====================================================
" custom commands {{{
if !exists(":Sudow")
    command Sudow :w !sudo tee % >/dev/null
endif
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                          \ | wincmd p | diffthis
endif

command! -bar LoadYCM call plug#load('YouCompleteMe')
command! -bar LoadUS  call plug#load('ultisnips')
command! -bar LoadFlB call plug#load('floobits-vim')
command! -bar LoadStc call plug#load('syntastic')
command! -bar LoadIDE LoadUS | LoadYCM "| LoadStc
"}}}
"=====================================================
" appearance {{{
"Включаем 256 цветов 
set t_Co=256
colorscheme hybrid 
set bg=dark
highlight Error gui=none guifg=#cc6666 guibg=NONE 

" folding options {{{
" auto folding
"set foldmethod=syntax
" size of column for folds on the left side
set foldcolumn=4
" how many folds are closed on file opening
set foldlevel=2 
" minimum number of lines to be folded
set foldminlines=1
"}}}
"}}}
"=====================================================
" useful autocmds {{{

" Помним что редактировали в последний раз. 
" И ещё при сохранении настроек они сразу применяются :p
function! RefreshUI() "{{{
  if exists(':AirlineRefresh')
    AirlineRefresh
  endif
  " Clear & redraw the screen, then redraw all statuslines.
  redraw!
  redrawstatus!
endfunction "}}}
augroup vimrcEx "{{{
    autocmd!
    autocmd BufReadPost *
                \ if line("'\"") > 1 && line("'\"") <= line("$") |
                \   exe "normal! g`\"" | endif
"     autocmd BufWritePost ~/.vimrc_enhanced source ~/.vimrc_enhanced  | call RefreshUI() 
augroup END "}}}

" Это чтоб компилить
" au BufRead * try | execute \"compiler ".&filetype | catch /./ | endtry

"}}}
"=====================================================
" completion {{{
" automatically open and close the popup menu / preview window {{{
augroup Popup
    autocmd!
    autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif
augroup END "}}}
set completeopt=menuone,preview  
" автокомплит через <Ctrl+Space>
inoremap <C-space> <C-x><C-o>
"}}}
"=====================================================

" hard mode
" source ~/projects/Vimscript/training.vim

"=====================================================
" keymap & spellcheck {{{
"for remapping cmds for russian layout in normal mode {{{
set keymap=russian-jcukenwin
set spelllang=ru_yo,en_us
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
"}}}

" spell check {{{
function! ToggleSpell() "{{{
    setlocal spell! spell?
    if exists('g:spelling')
        setlocal complete-=kspell
        "syn sync maxlines=200
        "syn sync minlines=50
        syntax sync fromstart
        unlet g:spelling
    else
        let g:spelling = 1
        setlocal complete+=kspell
    endif
endfunction "}}}
nnoremap <M-s> :call ToggleSpell() <CR>
"}}}
"}}}
"=====================================================
" Languages support {{{

"see ftplugin files for it
"several knots of mess remain here

augroup lang_setup
" erase all autocmds 
    autocmd!
augroup END


" --- template language support (SGML / XML too) --- {{{
augroup lang_setup
    autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
    autocmd bufnewfile,bufread *.rhtml setlocal ft=eruby
    autocmd BufNewFile,BufRead *.mako setlocal ft=mako
    autocmd BufNewFile,BufRead *.tmpl setlocal ft=htmljinja
    autocmd BufNewFile,BufRead *.py_tmpl setlocal ft=python
    let g:closetag_default_xml=1
    let g:sparkupNextMapping='<c-l>'
    let g:closetag_filenames='*.html,*.xhtml,*.phtml, *.xml'
    autocmd FileType html,htmldjango,htmljinja,eruby,mako let b:closetag_html_style=1
augroup END
"}}}

" --- VimWiki --- {{{
source ~/projects/by_lang/Vimscript/updrecfiles.vim
source ~/projects/by_lang/Vimscript/vimwikifix/checkboxes.vim
nmap <silent>gls <Plug>(FShiftCheckBox)
nmap <silent>glS <Plug>(BShiftCheckBox)
augroup lang_setup " :let g:vimwiki_main_index=1<CR>
    autocmd BufRead,BufEnter index.wiki if g:vimwiki_main_index == 1 | call DinamicRecentFilesList(30)
                \| let g:vimwiki_main_index=0 | endif
    au BufWinLeave *.wiki mkview
    au BufWinEnter *.wiki silent loadview
augroup END
"}}}

" --- C/C++ ------ {{{
function! SetupCpp()
    " configure tags - add additional tags here or comment out not-used ones
    setlocal tags+=~/.vim/tags/cpp
    setlocal tags+=~/.vim/tags/gl
    "set tags+=~/.vim/tags/qt4
    setlocal tags+=./tags

    " build tags of your own project with F12
    noremap <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
    noremap <F12> :! ctags -R --exclude=backups --language-force=C++
                \--c++-kinds=+p --fields=+iaS --extra=+q --sort=yes . <CR><CR>
    set cindent
    
    "completion
    let g:clang_user_options='|| exit 0'
    let g:clang_complete_copen = 1
    let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-3.5.so'
endfunction

augroup lang_setup
    autocmd FileType cc,cxx,cpp,hpp,c,h call SetupCpp()
augroup END
"}}}

" --- Other ---  {{{
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                \if &omnifunc == "" |
                \   setlocal omnifunc=syntaxcomplete#Complete |
                \endif
endif

"}}}

"}}}
"=====================================================

" vim: fdm=marker foldlevel=0
