call deoppet#initialize()
" call deoppet#custom#option('snippets',
"     \ [{ 'path': expand("$HOME/vimfiles/snippets")}] +
"     \ map(globpath(&runtimepath, 'neosnippets', 1, 1),
"     \     { _, val -> { 'path': val } }))

call deoppet#custom#option('snippets',
    \ map(globpath(&runtimepath, 'neosnippets', 1, 1),
    \     { _, val -> { 'path': val } }))
