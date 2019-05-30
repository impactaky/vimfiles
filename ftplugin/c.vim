if !get(g:, 'rtags_disable', 0) 
    noremap <buffer> g[ :Denite -mode=normal rtags_ref<CR>
    noremap <buffer> g] :Denite -mode=normal rtags_def<CR>
    noremap <buffer> z[ :Denite -mode=normal rtags_ref:
    noremap <buffer> z] :Denite -mode=normal rtags_def:
endif
