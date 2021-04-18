set timeoutlen=500
let g:which_key_map =  {}

call which_key#register('<Space>', "g:which_key_map")
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
let g:which_key_map.w = {'name' : '+Windows' ,
      \ 'v' :  'Split Vertical',
      \ }

let g:which_key_map.q = {
      \ 'name' : '+Quick' ,
      \ 'f' : 'Fix',    
      \}

let g:which_key_map.r = {
      \ 'name': '+Refactor',
      \ 'n' : 'Rename'
      \}

" vim: set ft=vim :
