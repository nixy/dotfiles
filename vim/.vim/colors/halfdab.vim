"{- HalfDab -}#
" A color scheme by nixy (https://github.com/nixy) "
"  |- Inspired by sourcerer by Xero Harrison "

"set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "halfdab"

"{- VARIABLE DECLARATIONS -}"
let s:black   = "0"
let s:red     = "1"
let s:green   = "2"
let s:yellow  = "3"
let s:blue    = "4"
let s:magenta = "5"
let s:cyan    = "6"
let s:grey    = "7"

let s:dark_grey      = "8"
let s:bright_red     = "9"
let s:bright_green   = "10"
let s:bright_yellow  = "11"
let s:bright_blue    = "12"
let s:bright_magenta = "13"
let s:bright_cyan    = "14"
let s:white          = "15"

let s:foreground="15"
let s:background="0"

exe "let s:bg_none           = ' ctermbg=NONE'"
exe "let s:bg_default        = ' ctermbg=".s:background"'"
exe "let s:bg_black          = ' ctermbg=".s:black"'"
exe "let s:bg_red            = ' ctermbg=".s:red"'"
exe "let s:bg_green          = ' ctermbg=".s:green"'"
exe "let s:bg_yellow         = ' ctermbg=".s:yellow"'"
exe "let s:bg_blue           = ' ctermbg=".s:blue"'"
exe "let s:bg_magenta        = ' ctermbg=".s:magenta"'"
exe "let s:bg_cyan           = ' ctermbg=".s:cyan"'"
exe "let s:bg_grey           = ' ctermbg=".s:grey"'"
exe "let s:bg_dark_grey      = ' ctermbg=".s:dark_grey"'"
exe "let s:bg_bright_red     = ' ctermbg=".s:bright_red"'"
exe "let s:bg_bright_green   = ' ctermbg=".s:bright_green"'"
exe "let s:bg_bright_yellow  = ' ctermbg=".s:bright_yellow"'"
exe "let s:bg_bright_blue    = ' ctermbg=".s:bright_blue"'"
exe "let s:bg_bright_magenta = ' ctermbg=".s:bright_magenta"'"
exe "let s:bg_bright_cyan    = ' ctermbg=".s:bright_cyan"'"
exe "let s:bg_white          = ' ctermbg=".s:white"'"

exe "let s:fg_none           = ' ctermfg=NONE'"
exe "let s:fg_default        = ' ctermfg=".s:foreground"'"
exe "let s:fg_black          = ' ctermfg=".s:black"'"
exe "let s:fg_red            = ' ctermfg=".s:red"'"
exe "let s:fg_green          = ' ctermfg=".s:green"'"
exe "let s:fg_yellow         = ' ctermfg=".s:yellow"'"
exe "let s:fg_blue           = ' ctermfg=".s:blue"'"
exe "let s:fg_magenta        = ' ctermfg=".s:magenta"'"
exe "let s:fg_cyan           = ' ctermfg=".s:cyan"'"
exe "let s:fg_grey           = ' ctermfg=".s:grey"'"
exe "let s:fg_dark_grey      = ' ctermfg=".s:dark_grey"'"
exe "let s:fg_bright_red     = ' ctermfg=".s:bright_red"'"
exe "let s:fg_bright_green   = ' ctermfg=".s:bright_green"'"
exe "let s:fg_bright_yellow  = ' ctermfg=".s:bright_yellow"'"
exe "let s:fg_bright_blue    = ' ctermfg=".s:bright_blue"'"
exe "let s:fg_bright_magenta = ' ctermfg=".s:bright_magenta"'"
exe "let s:fg_bright_cyan    = ' ctermfg=".s:bright_cyan"'"
exe "let s:fg_white          = ' ctermfg=".s:white"'"

exe "let s:fmt_none = ' cterm=NONE term=NONE'"
exe "let s:fmt_bold = ' cterm=NONE term=NONE'"


"{- BASIC HIGHLIGHTING -}"
exe "hi! Normal"        .s:fmt_none .s:fg_default .s:bg_none

exe "hi! Comment"       .s:fmt_none .s:fg_blue .s:bg_none
"       *Comment        any comment

exe "hi! Constant"      .s:fmt_none .s:fg_red .s:bg_none
"       *Constant       any constant
"        String         a string constant: "theory"
"        Character      a character constant: 'o' '\t'
"        Number         a number constant: 42 0xdab
"        Boolean        a boolean constant: true FALSE
"        Float          a floating point constant: 3.0e8

exe "hi! Identifier"    .s:fmt_none .s:fg_cyan .s:bg_none
"       *Identifier     any variable name
"        Function       a function name

exe "hi! Statement"      .s:fmt_none .s:fg_yellow .s:bg_none
"       *Statement       any statement
"       Conditional      if, then, else, endif, switch, etc.
"       Repeat           for, do, while, etc.
"       Label            case, default, etc.
"       Operator         "sizeof", "+", "*", etc.
"       Keyword          any other keyword
"       Exception        try, catch, throw

exe "hi! PreProc"        .s:fmt_none   .s:fg_magenta .s:bg_none
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

exe "hi! Type"           .s:fmt_none   .s:fg_green .s:bg_none
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

exe "hi! Special"        .s:fmt_none   .s:fg_magenta    .s:bg_none
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        Delimiter       character that needs attention
"        SpecialComment  special things inside a comment
"        Debug           debugging statements


exe "hi! Underlined"     .s:fmt_none .s:fg_magenta .s:bg_none
"       *Underlined      text that stands out, HTML links

exe "hi! Ignore"         .s:fmt_none   .s:fg_grey   .s:bg_none
"       *Ignore          left blank, hidden  |hl-Ignore|

exe "hi! Error"          .s:fmt_bold   .s:fg_grey    .s:bg_red
"       *Error           any erroneous construct

exe "hi! Todo"           .s:fmt_bold   .s:fg_magenta.s:bg_none
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX

exe "hi! StatusLine"     .s:fg_dark_grey .s:bg_bright_red
exe "hi! StatusLineNC"   .s:fg_dark_grey .s:bg_bright_magenta

exe "hi! LineNr" .s:fg_dark_grey .s:bg_none
exe "hi! CursorLineNr" .s:fg_bright_magenta .s:bg_none

exe "hi! TabLine"     .s:fmt_none .s:fg_bright_red .s:bg_dark_grey
exe "hi! TabLineSel"  .s:fmt_none .s:fg_bright_magenta .s:bg_dark_grey
exe "hi! TabLineFill" .s:fmt_none .s:fg_none .s:bg_dark_grey

exe "hi! CursorLine"   .s:fmt_none .s:bg_dark_grey
exe "hi! CursorColumn" .s:fmt_none .s:bg_dark_grey

exe "hi! VertSplit" .s:fg_dark_grey .s:bg_dark_grey

"if &background == "light"
"	highlight Normal ctermfg=0 ctermbg=15
"endif
