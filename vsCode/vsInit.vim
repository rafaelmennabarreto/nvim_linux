set clipboard=unnamed

" function
function! s:vscodeCommentary(...) abort
    if !a:0
        let &operatorfunc = matchstr(expand('<sfile>'), '[^. ]*$')
        return 'g@'
    elseif a:0 > 1
        let [line1, line2] = [a:1, a:2]
    else
        let [line1, line2] = [line("'["), line("']")]
    endif

    call VSCodeCallRange("editor.action.commentLine", line1, line2, 0)
endfunction

" normal mode
nmap <Tab> :tabn<CR>
nmap <S-Tab> :tabp<CR>
nnoremap <Space> :call VSCodeNotify('whichkey.show')<CR>
nnoremap <C-w> :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <S-k> :call VSCodeNotify('editor.action.showHover')<CR>
nnoremap gr :call VSCodeNotify('editor.action.goToReferences')<CR>
nnoremap gi :call VSCodeNotify('editor.action.goToImplementation')<CR>

" Bind C-/ to vscode commentary since calling from vscode produces double comments due to multiple cursors
xnoremap <expr> <C-/> <SID>vscodeCommentary()
nnoremap <expr> <C-/> <SID>vscodeCommentary() . '_'
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

" visual mode
vnoremap <Space> :call VSCodeNotify('whichkey.show')<CR>

" navigation
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateRight')<CR>
