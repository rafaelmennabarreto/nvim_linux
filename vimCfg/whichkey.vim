set timeoutlen=500
"
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

let g:which_key_map =  {}

" Define a separator
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

" dictionary
let g:which_key_map['q'] = {
      \ 'name' : '+Quick' ,
      \ 'f' : 'Fix',    
      \ 'd' : 'Diagnostic file'
      \}

let g:which_key_map['s'] = {'name' : '+Search' ,
      \ 'b' :  'Show Buffers',
      \ 'p' :  'Find text',
      \ }

let g:which_key_map['p'] = {
      \ 'name': '+Project',
      \ 'f' : 'find in project',
      \ 't' : 'tooge explorer',
      \}

let g:which_key_map['r'] = {
      \ 'name': '+Refactor',
      \ 'n' : 'Rename'
      \}

let g:which_key_map['w'] = {'name' : '+Windows' ,
      \ '/' : 'Split Vertical',
      \ '-' : 'Split Horizontal',
      \ 'h' : 'jump to left window',
      \ 'l' : 'jump to left rigth',
      \ 'j' : 'jump to left down',
      \ 'k' : 'jump to left up'
      \ }

" vim: set ft=vim :
call which_key#register('<Space>', "g:which_key_map")
