call deoppet#initialize()
call deoppet#custom#option('snippets',
    \ [{ 'path': expand("$HOME/vimfiles/snippets")}] +
    \ map(globpath(&runtimepath, 'neosnippets', 1, 1),
    \     { _, val -> { 'path': val } }))


imap <expr> <C-e> deoppet#expandable() ? '<Plug>(deoppet_expand)' : '<plug>(deoppet_jump_forward)'
smap <expr> <C-e> deoppet#expandable() ? '<Plug>(deoppet_expand)' : '<plug>(deoppet_jump_forward)'
xmap <expr> <C-e> deoppet#expandable() ? '<Plug>(deoppet_expand)' : '<plug>(deoppet_jump_forward)'
