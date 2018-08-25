set hidden
let g:LanguageClient_serverCommands = {
	\ 'c': ['clangd-6.0', '-compile-commands-dir=' . getcwd() . '/build'],
	\ 'cpp': ['clangd-6.0', '-compile-commands-dir=' . getcwd() . '/build'],
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'nightly', 'rls'],
    \ }
let g:LanguageClient_autoStart = 1
let g:LanguageClient_hoverPreview = "Never"

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
