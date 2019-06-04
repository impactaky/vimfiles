if !get(g:, 'rtags_disable', 0) 
    noremap <buffer> g[ :Denite rtags_ref<CR>
    noremap <buffer> g] :Denite rtags_def<CR>
    noremap <buffer> z[ :Denite rtags_ref:
    noremap <buffer> z] :Denite rtags_def:
endif
