" <<basic>> rc file
" for several enhancements see end of file
set nocompatible 

let $PATH .= ":".$HOME."/bin"
set shell=/bin/zsh

" no beeping and blinking
set noerrorbells visualbell t_vb=

set enc=utf-8	     " utf-8 по дефолту в файлах
set ls=2             " всегда показываем статусбар
set incsearch	     " инкреминтируемый поиск
set hlsearch	     " подсветка результатов поиска
set nu	             " показывать номера строк

filetype plugin indent on
syntax on

set modeline
set modelines=1
" e.g /* vim: set ts=4 sw=4 sts=4 cin: */

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

"Автоотступ
set autoindent
" size of a hard tabstop
"set tabstop=4
" size of an <<indent>>
" set shiftwidth=4

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

if !exists(":Sudow")
    command Sudow :w !sudo tee % >/dev/null
endif
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                          \ | wincmd p | diffthis
endif

set wildmenu

set backupdir=~/.local/vim-backups/backup//
set directory=~/.local/vim-backups/swp//
set undodir=~/.local/vim-backups/undo//

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

