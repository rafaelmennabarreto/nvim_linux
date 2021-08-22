" config search  needs ripgrep installed
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] "Hide files in .gitignore
let g:ctrlp_show_hidden = 1     

" config COC extensions to restore
let g:coc_global_extensions = [
      \'coc-tsserver',
      \'coc-json', 
      \'coc-lua',
      \'coc-tabnine',
      \'coc-eslint',
      \'coc-prettier',
      \]
