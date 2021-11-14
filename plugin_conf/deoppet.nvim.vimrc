call deoppet#initialize()
call deoppet#custom#option('snippets',
    \ [{ 'path': expand("$HOME/vimfiles/snippets")}] +
    \ map(globpath(&runtimepath, 'neosnippets', 1, 1),
    \     { _, val -> { 'path': val } }))

imap <C-e> <plug>(deoppet_expand)
imap <C-f> <plug>(deoppet_jump_forward)
imap <C-b> <plug>(deoppet_jump_backward)
smap <C-f> <plug>(deoppet_jump_forward)
smap <C-b> <plug>(deoppet_jump_backward)
xmap <C-l> <plug>(deoppet_select_text)
xmap <C-x> <plug>(deoppet_cut_text)
