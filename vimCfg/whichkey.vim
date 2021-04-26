set timeoutlen=500
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

let g:which_key_map =  {}

" Define a separator
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

let g:which_key_map.e = 'Explorer'
let g:which_key_map.f = 'Find by text'
let g:which_key_map.h = 'Jump to splited left'
let g:which_key_map.j = 'Jump to splited down'
let g:which_key_map.k = 'Jump to splited up'
let g:which_key_map.l = 'Jump to splited right'
let g:which_key_map.p = 'Search File'

" dictionary
let g:which_key_map['w'] = {'name' : '+Windows' ,
      \ 'v' :  'Split Vertical',
      \ 'h' :  'Split Horizontal',
      \ }

let g:which_key_map['s'] = {'name' : '+Search' ,
      \ 'b' :  'Show Buffers',
      \ 'f' :  'Find Files',
      \ }

let g:which_key_map['q'] = {
      \ 'name' : '+Quick' ,
      \ 'f' : 'Fix',    
      \ 'd' : 'Diagnostic file'
      \}

let g:which_key_map.r = {
      \ 'name': '+Refactor',
      \ 'n' : 'Rename'
      \}

" vim: set ft=vim :
call which_key#register('<Space>', "g:which_key_map")
