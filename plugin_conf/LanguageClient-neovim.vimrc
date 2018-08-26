set hidden
" let g:LanguageClient_hoverPreview = "Never"
let g:LanguageClient_serverCommands = {
	\ 'c': ['cquery', '--log-file=/tmp/cp.log', '--init={"cacheDirectory":"/tmp/cquery/"}'],
	\ 'cpp': ['cquery', '--log-file=/tmp/cp.log', '--init={"cacheDirectory":"/tmp/cquery/"}'],
	\ 'python': ['pyls'],
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'nightly', 'rls'],
    \ }
let g:LanguageClient_autoStart = 1

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
