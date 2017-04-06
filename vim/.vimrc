"{- ~/.vimrc -}"

" Use vim defaults "
set nocompatible

"{- PLUGIN MANAGER -}"
  " Load pathogen, the plugin manager, which then loads all plugins "
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

  " Use two spaces instead of tabs "
  " Can be overriden by ftplugin and sleuth "
    set softtabstop=2
    set shiftwidth=2
    set tabstop=2
    set expandtab

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
    set wildignorecase
    set wildmode=longest,full

  " Enable spelling completion
    set complete+=kspell

  " Match the longest completion option then display menu
    set completeopt=menuone,longest

  " Use UTF-8 "
    set encoding=utf-8

  " Lines should be no longer than eighty characters "
    set linebreak
    set tw=80

  " History holds as many entries as it can "
    set history=10000

  " Spellchecking uses American Enlish and ignores any asian characters "
    set spelllang=en_us,cjk

  " Store the viminfo file in the .vim directory "
    set viminfo+=n$HOME/.vim/.viminfo

  " Don't use a pager "
    set nomore

  " Use the system clipboard when deleting, pasting, or yanking "
    if has("clipboard")
      set clipboard=unnamed,unnamedplus
    endif

"{- PLUGINS -}"

  "{- SLIME -}"
    " Use screen as slime's target
      let g:slime_target = "screen"

    " Use a temporary file to contain slime's paste buffer
      let g:slime_paste_file = tempname()

    " Default session for screen
      let g:slime_default_config = {"sessionname": "REPL", "windowname": ""}

  "{- SUPERTAB -}"
    " Use the default vim completion keys for supertab completion
      let g:SuperTabMappingForward = '<c-p>'
      let g:SuperTabMappingBackward = '<c-n>'

    " Use context sensitive completion to allow filename and omni completion
      let g:SuperTabDefaultCompletionType = "context"

    " Completion context only lasts for current completion
      let g:SuperTabRetainCompletionDuration = "completion"

    " Use enhanced longest matching completion
      let g:SuperTabLongestEnhanced = 1

  "{- TAGBAR -}"
    " Use `hasktags` to generate tags for Haskell files
      let g:tagbar_type_haskell = {
        \ 'ctagsbin'  : 'hasktags',
        \ 'ctagsargs' : '-x -c -o-',
        \ 'kinds'     : [
            \  'm:modules:0:1',
            \  'd:data: 0:1',
            \  'd_gadt: data gadt:0:1',
            \  't:type names:0:1',
            \  'nt:new types:0:1',
            \  'c:classes:0:1',
            \  'cons:constructors:1:1',
            \  'c_gadt:constructor gadt:1:1',
            \  'c_a:constructor accessors:1:1',
            \  'ft:function types:1:1',
            \  'fi:function implementations:0:1',
            \  'o:others:0:1'
        \ ],
        \ 'sro'        : '.',
        \ 'kind2scope' : {
            \ 'm' : 'module',
            \ 'c' : 'class',
            \ 'd' : 'data',
            \ 't' : 'type'
        \ },
        \ 'scope2kind' : {
            \ 'module' : 'm',
            \ 'class'  : 'c',
            \ 'data'   : 'd',
            \ 'type'   : 't'
        \ }
    \ }

