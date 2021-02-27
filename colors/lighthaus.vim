" Lighthaus Color theme for Vim 
" GIT: https://github.com/lighthaus-theme/vim
" Author: Adhiraj Sirohi (https://github.com/brutuski)
"         Vasundhara Sharma (https://github.com/vasundhasauras)

" Copyright © 2021-Present Lighthaus Theme
" Copyright © 2021-Present Adhiraj Sirohi
" Copyright © 2021-Present Vasundhara Sharma


" INIT {
set background=dark
highlight clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "lighthaus"
let g:version     = "1.0.1"
" }


" LIGHTHAUS COLORS {
let s:black           = { "gui": "#21252D", "cterm": "234" }

let s:red             = { "gui": "#FC2929", "cterm": "79"  }
let s:red2            = { "gui": "#FF5050", "cterm": "79"  }

let s:green           = { "gui": "#44B273", "cterm": "72"  }
let s:green2          = { "gui": "#50C16E", "cterm": "72"  }

let s:orange          = { "gui": "#E25600", "cterm": "166" }
let s:orange2         = { "gui": "#ED722E", "cterm": "166" }

let s:blue            = { "gui": "#1D918B", "cterm": "30"  }
let s:blue2           = { "gui": "#47A8A1", "cterm": "30"  }

let s:purple          = { "gui": "#D16BB7", "cterm": "169" }
let s:purple2         = { "gui": "#D68EB2", "cterm": "169" }

let s:cyan            = { "gui": "#00BFA4", "cterm": "43"  }
let s:cyan2           = { "gui": "#5AD1AA", "cterm": "43"  }

let s:white           = { "gui": "#FFFADE", "cterm": "230" }
let s:white2          = { "gui": "#CCCCCC", "cterm": "230" }

let s:bg              = { "gui": "#18191E", "cterm": "234" }
let s:fg              = { "gui": "#FFFADE", "cterm": "230" }
let s:fg_alt          = { "gui": "#FFEE79", "cterm": "230" }

let s:hl_yellow       = { "gui": "#FFFF00", "cterm": "226" }
let s:hl_orange       = { "gui": "#FF4D00", "cterm": "202" }
let s:hl_bg           = { "gui": "#090B26", "cterm": "234" }
" }


let s:line_fg         = { "gui": "#747578", "cterm": "175" }

let s:gutter_bg       = { "gui": "#282c34", "cterm": "236" }
let s:non_text        = { "gui": "#373C45", "cterm": "239" }


let s:selection_bg    = s:hl_bg
let s:selection_fg    = s:hl_orange

let s:vsplit_fg       = s:white2
let s:vsplit_bg       = s:black


" FORMATTING {
let s:c      = "undercurl"
let s:r      = "reverse"
let s:s      = "standout"
let s:B      = "bold"
let s:U      = "underline"
let s:I      = "italic"
" }


function! s:h(group, fg, bg, attr)
  if type(a:fg) == type({})
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm
  else
    exec "hi " . a:group . " guifg=NONE cterm=NONE"
  endif
  if type(a:bg) == type({})
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm
  else
    exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  else
    exec "hi " . a:group . " gui=NONE cterm=NONE"
  endif
endfun


" ― ― ― ― ― ― ― ― ― 
" EDITOR SETTINGS
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("Normal",        s:fg,           s:bg,       "")

call s:h("Cursor",        s:hl_yellow,    s:bg,       "")
call s:h("CursorColumn",  "",             "",         "")
call s:h("CursorLine",    "",             s:black,    "")
call s:h("CursorLineNr",  s:hl_yellow,    s:black,    "")

call s:h("ColorColumn",   "",             s:black,    "")

call s:h("LineNr",        s:line_fg,      s:bg,       "")
" }


" ― ― ― ― ― ― ― ― ― 
" DIFFERENCES
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("DiffAdd",       s:green,        "",           "")
call s:h("DiffChange",    s:orange,       "",           "")
call s:h("DiffDelete",    s:red,          "",           "")
call s:h("DiffText",      s:blue,         "",           "")
call s:h("DiffLine",      s:blue,         "",           "")

call s:h("DiffFile",      s:purple,       "",           "")
call s:h("DiffNewFile",   s:hl_yellow,    "",           "")

call s:h("ErrorMsg",      s:black,        s:red2,       "")
call s:h("WarningMsg",    s:black,        s:orange2,    "")
call s:h("Question",      s:black,        s:purple2,    "")

call s:h("Pmenu",         s:white2,       s:black,      "")
call s:h("PmenuSel",      s:hl_orange,    s:hl_bg,      "")
call s:h("PmenuSbar",     s:white2,       s:black,      "")
call s:h("PmenuThumb",    s:white,        s:black,      "")
" }


" ― ― ― ― ― ― ― ― ― 
"  COLUMNS
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("Conceal",       s:fg,           "",             "")
call s:h("VertSplit",     s:vsplit_fg,    s:vsplit_bg,    "")
call s:h("Folded",        s:purple2,      "",             "")
call s:h("FoldColumn",    s:line_fg,      "",             "")
call s:h("SignColumn",    s:line_fg,      "",             "")
" }


" ― ― ― ― ― ― ― ― ― 
" TAB
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("TabLine",       s:white2,   "",   "")
call s:h("TabLineFill",   s:white2,   "",   "")
call s:h("TabLineSel",    s:fg,       "",   "")
" }


" ― ― ― ― ― ― ― ― ― 
" FILE NAVIGATION / SEARCHING
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("Directory",   s:bg,   s:blue,     "")
call s:h("IncSearch",   s:bg,   s:orange,   "")
call s:h("Search",      s:bg,   s:orange,   "")
" }


" ― ― ― ― ― ― ― ― ― 
" PROMPT / STATUS
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("Title",               s:white2,   "",         "")
call s:h("WildMenu",            s:fg,       "",         "")

call s:h("StatusLine",          s:blue2,    s:black,    "")
call s:h("StatusLineTerm",      s:blue2,    s:black,    "")
call s:h("StatusLineNC",        s:white2,   s:black,    "")
call s:h("StatusLineTermNC",    s:white2,   s:black,    "")
" }


" ― ― ― ― ― ― ― ― ― 
" VISUAL AID
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("MatchParen",  s:hl_orange,      "",               "")
call s:h("SpecialKey",  s:white2,         "",               "")
call s:h("Visual",      s:selection_fg,   s:selection_bg,   "")
call s:h("VisualNOS",   s:selection_fg,   s:selection_bg,   "")
" }


" ― ― ― ― ― ― ― ― ― 
" SPELL CHECK
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("SpellBad",    s:red,      s:black,   s:U)
call s:h("SpellCap",    s:orange,   s:black,   "")
call s:h("SpellLocal",  s:orange,   s:black,   "")
call s:h("SpellRare",   s:orange,   s:black,   "")
" }


" ― ― ― ― ― ― ― ― ― 
" VARIABLE TYPES
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("Boolean",     s:blue2,      "",   "")
call s:h("Character",   s:green2,     "",   "")
call s:h("Constant",    s:white,      "",   "")
call s:h("Define",      s:purple2,    "",   "")
call s:h("String",      s:green2,     "",   "")
call s:h("Number",      s:purple2,    "",   "")
call s:h("Float",       s:purple2,    "",   "")
" }


" ― ― ― ― ― ― ― ― ― 
" SYNTAX
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("Whitespace",      s:non_text,   "",   "")
call s:h("NonText",         s:non_text,   "",   "")
call s:h("Comment",         s:white2,     "",   "")
call s:h("Delimiter",       s:white2,     "",   "")

call s:h("Identifier",      s:white,      "",   "")
call s:h("Include",         s:cyan2,      "",   "")
call s:h("Function",        s:blue2,      "",   "")
call s:h("Statement",       s:cyan2,      "",   "")
call s:h("StorageClass",    s:cyan2,      "",   "")
call s:h("Structure",       s:cyan2,      "",   "")
call s:h("Type",            s:blue2,      "",   "")
call s:h("Typedef",         s:cyan2,      "",   "")

call s:h("Conditional",     s:cyan2,      "",   "")
call s:h("Repeat",          s:cyan2,      "",   "")
call s:h("Label",           s:cyan2,      "",   "")
call s:h("Operator",        s:cyan2,      "",   "")
call s:h("Keyword",         s:cyan2,      "",   "")
call s:h("Exception",       s:blue2,      "",   "")
call s:h("PreProc",         s:cyan2,      "",   "")
call s:h("Special",         s:orange2,    "",   "")
call s:h("SpecialChar",     s:fg_alt,     "",   "")
call s:h("SpecialComment",  s:blue2,      "",   "")

call s:h("Tag",             s:white2,     "",   "")
call s:h("Todo",            s:fg_alt,     "",   "")
" }


" + + + + + + + + + LANGUAGES + + + + + + + + +


" ― ― ― ― ― ― ― ― ― 
" ―  C LIKE ― 
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("Macro",           s:purple2,    "",   "")
call s:h("PreCondit",       s:purple2,    "",   "")

call s:h("Debug",           s:fg,         "",   "")
call s:h("Ignore",          s:white2,     "",   "")
" }

" ― ― ― ― ― ― 
" ―  JAVA―
" ― ― ― ― ― ― 
" {
call s:h("javaOperator",    s:cyan2,      "",   "")
call s:h("javaVarArg",      s:purple2,    "",   "")

" }
" ― ― ― ― ― ― 
" ―  MAKE―
" ― ― ― ― ― ― 
" {
call s:h("makePreCondit",    s:purple2,   "",   "")
call s:h("makeCommands",     s:orange2,   "",   "")
"}

" ― ― ― ― ― ― ― ― ― 
" ―  MARKDOWN ―
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("markdownBold",       s:white2,    "",  s:B)
call s:h("markdownItalic",     s:white2,    "",  s:I)

call s:h("markdownH1",         s:blue,      "",  "")
hi link markdownH2 markdownH1
hi link markdownH3 markdownH1
hi link markdownH4 markdownH1
hi link markdownH5 markdownH1
hi link markdownH6 markdownH1

call s:h("markdownCode",            s:orange2,      "",  "")
call s:h("markdownCodeBlock",       s:orange2,      "",  "")
hi link markdownCodeDelimiter Delimiter
call s:h("markdownCodeError",       s:red2,         "",  "")
call s:h("markdownCodeSpecial",     s:orange,       "",  "")

call s:h("markdownUrl",                 s:purple,   "",  "")
call s:h("markdownUrlTitleDelimiter",   s:cyan,     "",  "")
" }


" ― ― ― ― ― ― ― ― ― 
" ―  PYTHON ― 
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("pythonConditional",     s:purple2,    "",   "")
call s:h("pythonException",       s:purple2,    "",   "")
call s:h("pythonFunction",        s:blue2,      "",   "")
call s:h("pythonInclude",         s:blue,       "",   "")
call s:h("pythonOperator",        s:cyan,       "",   "")
call s:h("pythonStatement",       s:cyan,       "",   "")
call s:h("pythonBoolean",         s:blue2,      "",   "")
" }

" ― ― ― ― ― ― ― ― ― 
" ―  SQL ― 
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("sqlKeyword",    s:cyan2,      "",   "")
call s:h("sqlSpecial",    s:orange2,    "",   "")
" }


" + + + + + + + + + PLUGINS + + + + + + + + +


" ― ― ― ― ― ― ― ― ― 
" CtrlP
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("CtrlPMatch",    s:cyan2,    "",   "")
" }


" ― ― ― ― ― ― ― ― ― 
" GIT
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("gitcommitUnmerged",       s:red,          "",   "")
call s:h("gitcommitBranch",         s:purple,       "",   "")
call s:h("gitcommitDiscardedType",  s:red,          "",   "")
call s:h("gitcommitSelectedType",   s:green,        "",   "")
call s:h("gitcommitHeader",         s:fg,           "",   "")
call s:h("gitcommitUntrackedFile",  s:white2,       "",   "")
call s:h("gitcommitDiscardedFile",  s:red,          "",   "")
call s:h("gitcommitSelectedFile",   s:hl_yellow,    "",   "")
call s:h("gitcommitUnmergedFile",   s:orange,       "",   "")
call s:h("gitcommitFile",           s:white,        "",   "")

hi link gitcommitComment Comment
hi link gitcommitUntracked Comment
hi link gitcommitDiscarded Comment
" }


" ― ― ― ― ― ― ― ― ― 
" NERDTREE
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("NerdTreeClosable",    s:orange2,    "",   "")
call s:h("NerdTreeOpenable",    s:green2,     "",   "")

call s:h("NerdTreeDir",         s:blue2,      "",   "")
call s:h("NerdTreeDirSlash",    s:cyan,       "",   "")

call s:h("NerdTreeExecFile",    s:green,      "",   "")
call s:h("NerdTreeFile",        s:white,      "",   "")

call s:h("NerdTreeHelp",        s:white2,     "",   "")
call s:h("NerdTreeUp",          s:orange,     "",   "")

call s:h("NerdTreeFlags",       s:cyan2,      "",   "")
" }


" ― ― ― ― ― ― ― ― ― 
" VIM
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("vimMapRhs",     s:blue2,    "",   "")
call s:h("vimNotation",   s:blue2,    "",   "")
hi link vimFunction Function
hi link vimUserFunc Function
" }


" ― ― ― ― ― ― ― ― ― 
" VIM ALE
" https://github.com/dense-analysis/ale
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("CocErrorHighlight",     s:red2,       "",   "")
call s:h("CocWarningHighlight",   s:orange2,    "",   "")

call s:h("CocErrorSign",          s:red,        "",   "")
call s:h("CocHintSign",           s:fg_alt,     "",   "")
call s:h("CocInfoSign",           s:purple,     "",   "")
" }


" ― ― ― ― ― ― ― ― ― 
" VIM COC
" https://github.com/neoclide/coc.nvim
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("AleError",          s:red,        "",   "")
call s:h("AleErrorSign",      s:red2,       "",   "")

call s:h("AleInfo",           s:purple,     "",   "")

call s:h("AleWarning",        s:orange,     "",   "")
call s:h("AleWarningSign",    s:orange2,    "",   "")

" }


" ― ― ― ― ― ― ― ― ― 
" VIM FUGITIVE
" https://github.com/tpope/vim-fugitive
" ― ― ― ― ― ― ― ― ― 
" {
hi link diffAdded DiffAdd
hi link diffChanged DiffChange
hi link diffRemoved DiffDelete
" }


" ― ― ― ― ― ― ― ― ― 
" VIM GIT GUTTER
" https://github.com/airblade/vim-gitgutter
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("GitGutterAdd",            s:green,        "",  "")
call s:h("GitGutterDelete",         s:red,          "",  "")
call s:h("GitGutterChange",         s:hl_yellow,    "",  "")
call s:h("GitGutterChangeDelete",   s:red,          "",  "")
" }


" ― ― ― ― ― ― ― ― ― 
" VIM INDENT GUIDES
" https://github.com/nathanaelkane/vim-indent-guides
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("IndentGuidesEven",      s:white,    "",   "")
call s:h("IndentGuidesOdd",       s:white2,   "",   "")
" }


" ― ― ― ― ― ― ― ― ― 
" VIM PLUG
" https://github.com/junegunn/vim-plug
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("plugInstall",   s:green,    "",   "")
call s:h("plugClean",     s:blue,     "",   "")
call s:h("plugDeleted",   s:red,      "",   "")
" }


" ― ― ― ― ― ― ― ― ― 
" VIM SIGNATURE
" https://github.com/kshenoy/vim-signature
" ― ― ― ― ― ― ― ― ― 
" {
call s:h("SignatureMarkText",   s:hl_orange,    "",   "")


" }
" ― ― ― ― ― ― ― ― ― 
" NEOVIM COLOR BUFFER
" ― ― ― ― ― ― ― ― ― 
" {
  if has('nvim')
    let g:terminal_color_0            = s:black.gui
    let g:terminal_color_1            = s:red.gui
    let g:terminal_color_2            = s:green.gui
    let g:terminal_color_3            = s:orange.gui
    let g:terminal_color_4            = s:blue.gui
    let g:terminal_color_5            = s:purple.gui
    let g:terminal_color_6            = s:cyan.gui
    let g:terminal_color_7            = s:white.gui
    let g:terminal_color_8            = s:bg.gui
    let g:terminal_color_9            = s:red2.gui
    let g:terminal_color_10           = s:green2.gui
    let g:terminal_color_11           = s:orange2.gui
    let g:terminal_color_12           = s:blue2.gui
    let g:terminal_color_13           = s:purple2.gui
    let g:terminal_color_14           = s:cyan2.gui
    let g:terminal_color_15           = s:white2.gui
    let g:terminal_color_background   = s:bg.gui
    let g:terminal_color_foreground   = s:fg.gui
  endif
" }

