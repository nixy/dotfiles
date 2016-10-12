"{- ~/.vimrc -}"

" Use vim defaults "
set nocompatible

"{- PLUGINS -}"

  " Load pathogen, the plugin manager, and all of the plugins "
    runtime bundle/pathogen/autoload/pathogen.vim
    execute pathogen#infect()

"{- COMMANDS -}"

  " Remove blank lines "
    command! RemoveBlankLines :g/^\s*$/d

  " Remove trailing whitespace "
    command! RemoveTrailingWhitespace :%s/\s\+$//

  " Toggle spellchecking "
    command! Spelling :setlocal spell! spell?

  " Toggle invisible characters "
    command! ShowInvisible :setlocal list!

  " Toggle cursor crosshair "
    command! Crosshair :setlocal cursorline! cursorcolumn! ruler

  " Toggle line numbering
    command! Numbers :setlocal number! relativenumber!


"{- INTERFACE -}"

  " Colors and syntax highlighting "
    colorscheme peachpuff
    filetype plugin on
    syntax on

  " Use four spaces instead of tabs "
  " Can be overriden by ftplugin and sleuth "
    set softtabstop=4
    set shiftwidth=4
    set tabstop=4

  " Don't redraw the screen unless necessary "
    set lazyredraw

  " Don't wrap lines "
    set nowrap

  " Don't show line numbers unless asked "
    set numberwidth=1
    set nonumber

  " Show the ruler "
    set ruler

  " Enable Mouse Support "
    set mouse=a

  " Display partially completed commands "
    set showcmd

  " Display the current mode in the status bar "
    set showmode

  " Make backspace acts as you would expect "
    set backspace=indent,eol,start


"{- FUNCTIONALITY -}"

  " Don't use swap files or backups "
    set nowritebackup
    set noswapfile
    set nobackup

  " Highlight search results "
    set hlsearch

  " Searching and completion are case insenstive "
    set ignorecase
    set smartcase
    set infercase

  " Automatically indent things and be smart about it :^) "
    set smartindent
    set autoindent

  " Advanced command-line completion "
    set wildmenu
    set wildignore=*.o,*.obj,*~
    set wildignore+=*.png,*.jpg,*.gif

  " Use UTF-8 "
    set encoding=utf-8

  " Lines should be no longer than eighty characters "
    set linebreak
    set tw=80

  " History should hold a thousand entires "
    set history=1000

  " Spellchecking uses American Enlish and ignores any asian characters "
    set spelllang=en_us,cjk

  " Store the viminfo file in the .vim directory "
    set viminfo+=n$HOME/.vim/.viminfo

  " Don't use a pager "
    set nomore

  " Use the system clipboard when deleting, pasting, or yanking "
    if has("clipboard")
      set clipboard=unnamed
    endif
