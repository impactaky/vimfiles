set hidden

set signcolumn=yes

" let g:LanguageClient_hoverPreview = "Never"
let g:LanguageClient_serverCommands = {
	\ 'python': ['pyls'],
    \ 'cpp': ['clangd-9'],
    \ 'c': ['clangd-9'],
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'nightly', 'rls'],
    \ }
let g:LanguageClient_autoStart = 1

let g:LanguageClient_diagnosticsDisplay = {
\    1: {
\        "name": "Error",
\        "texthl": "ALEError",
\        "signText": "✘",
\        "signTexthl": "ALEErrorSign",
\    },
\    2: {
\        "name": "Warning",
\        "texthl": "ALEWarning",
\        "signText": "!",
\        "signTexthl": "ALEWarningSign",
\    },
\}
let g:LanguageClient_diagnosticsList='Location'
