if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim
" Below are personal settings
syntax on
filetype plugin on
filetype indent on
set path+=**
set wildmenu
set si
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set background=dark
set modeline
set incsearch
set hlsearch
set nu
set showcmd
set ignorecase
set smartcase
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set ruler


" Below are stock settings
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif


" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif
