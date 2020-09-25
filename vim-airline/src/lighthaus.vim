" Lighthaus Color theme for Vim Airline
" GIT: https://github.com/lighthaus-theme/vim
" Author: Adhiraj Sirohi (https://github.com/brutuski)
"         Vasundhara Sharma (https://github.com/vasundhasauras)

" Copyright © 2020-Present Lighthaus Theme
" Copyright © 2020-Present Adhiraj Sirohi
" Copyright © 2020-Present Vasundhara Sharma


let s:lighthaus_vim_v="1.0.0"


" COLOR PALETTE

let s:lh_gui1="#21252D"
let s:lh_gui2="#00BFA4"
let s:lh_gui3="#FFFADE"
let s:lh_gui4="#090B26"
let s:lh_gui5="#50C16E"
let s:lh_gui6="#ED722E"
let s:lh_gui7="#FF5050"
let s:lh_gui8="#CCCCCC"
let s:lh_gui9="#FC2929"


let s:lh_cterm1="234"
let s:lh_cterm2="43"
let s:lh_cterm3="230"
let s:lh_cterm4="233"
let s:lh_cterm5="71"
let s:lh_cterm6="208"
let s:lh_cterm7="203"
let s:lh_cterm8="188"
let s:lh_cterm9="196"

let g:airline#themes#jet#palette = {}


" NORMAL MODE
let s:N1 = [ s:lh_gui1 , s:lh_gui2 , s:lh_cterm1, s:lh_cterm2 ]
let s:N2 = [ s:lh_gui3 , s:lh_gui4 , s:lh_cterm3, s:lh_cterm4 ]
let s:N3 = [ s:lh_gui2 , s:lh_gui1 , s:lh_cterm2, s:lh_cterm1 ]
let g:airline#themes#jet#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)


" INSERT MODE
let s:I1 = [ s:lh_gui1 , s:lh_gui5 , s:lh_cterm1, s:lh_cterm5 ]
let s:I2 = [ s:lh_gui3 , s:lh_gui4 , s:lh_cterm3, s:lh_cterm4 ]
let s:I3 = [ s:lh_gui5 , s:lh_gui1 , s:lh_cterm5, s:lh_cterm1 ]
let g:airline#themes#jet#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)


" VISUAL MODE
let s:V1 = [ s:lh_gui1 , s:lh_gui6 , s:lh_cterm1, s:lh_cterm6 ]
let s:V2 = [ s:lh_gui3 , s:lh_gui4 , s:lh_cterm3, s:lh_cterm4 ]
let s:V3 = [ s:lh_gui6 , s:lh_gui1 , s:lh_cterm6, s:lh_cterm1 ]
let g:airline#themes#jet#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)


" REPLACE MODE
let s:R1 = [ s:lh_gui1 , s:lh_gui7 , s:lh_cterm1, s:lh_cterm7 ]
let s:R2 = [ s:lh_gui3 , s:lh_gui4 , s:lh_cterm3, s:lh_cterm4 ]
let s:R3 = [ s:lh_gui7 , s:lh_gui1 , s:lh_cterm7, s:lh_cterm1 ]
let g:airline#themes#jet#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)


" INACTIVE MODE
let s:IN1 = [ s:lh_gui8 , s:lh_gui1 , s:lh_cterm8, s:lh_cterm1 ]
let s:IN2 = [ s:lh_gui8 , s:lh_gui1 , s:lh_cterm8, s:lh_cterm1 ]
let s:IN3 = [ s:lh_gui8 , s:lh_gui1 , s:lh_cterm8, s:lh_cterm1 ]
let g:airline#themes#jet#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)


" ACCENTS
let g:airline#themes#jet#palette.accents = {
      \ 'red': [ s:lh_gui9 , '' , s:lh_cterm9 , ''  ]
      \ }


" WARNING
let g:airline#themes#jet#palette.normal_modified = {
      \ 'airline_c': [ '#D68EB2' , s:lh_gui1  , 237 , s:lh_cterm1 , '' ] ,
      \ }

let g:airline#themes#jet#palette.insert_modified = {
      \ 'airline_c': [ '#E25600' , s:lh_gui1  , 237 , s:lh_cterm1 , '' ] ,
      \ }

let g:airline#themes#jet#palette.visual_modified = {
      \ 'airline_c': [ '#FF4D00' , s:lh_gui1  , 237 , s:lh_cterm1 , '' ] ,
      \ }

let g:airline#themes#jet#palette.replace_modified = {
      \ 'airline_c': [ '#FFFF00' , s:lh_gui1  , 237 , s:lh_cterm1 , '' ] ,
      \ }


" ERROR
let g:airline#themes#jet#palette.normal_error = {
      \ 'airline_c': [ s:lh_gui9 , s:lh_gui1  , 237 , s:lh_cterm1 , '' ] ,
      \ }

let g:airline#themes#jet#palette.insert_error = {
      \ 'airline_c': [ s:lh_gui9 , s:lh_gui1  , 237 , s:lh_cterm1 , '' ] ,
      \ }

" Settings
	let g:airline_symbols.paste = 'P'
	let g:airline_symbols.spell = 'S'
	let g:airline_section_z = airline#section#create(['%1p%% — ',
		\ '%l%#__restore__#', ':%c'])

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:lh_gui1 , s:lh_gui7 , s:lh_cterm1, s:lh_cterm7 ]
let s:CP2 = [ s:lh_gui1 , s:lh_gui2 , s:lh_cterm1, s:lh_cterm2 ]
let s:CP3 = [ s:lh_gui1 , s:lh_gui5 , s:lh_cterm1, s:lh_cterm5 ]

let g:airline#themes#jet#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
