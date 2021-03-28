set clipboard=unnamed

" normal mode
nnoremap <Space> :call VSCodeNotify('whichkey.show')<CR>
nnoremap <C-w> :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <S-k> :call VSCodeNotify('editor.action.showHover')<CR>
nnoremap gr :call VSCodeNotify('editor.action.goToReferences')<CR>
nnoremap gi :call VSCodeNotify('editor.action.goToImplementation')<CR>

" comment code
inoremap <C-;> :call VSCodeNotify('edito.action.commentLine')

" visual mode
vnoremap <Space> :call VSCodeNotify('whichkey.show')<CR>

" navigation
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateRight')<CR>
