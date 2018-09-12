function! EnterPlaybackRecordMode()
    execute("nmap j j")
    execute("nmap k k")
endfunction

function! EndPlaybackRecordMode()
	execute("nmap j <Plug>(accelerated_jk_j)")
	execute("nmap k <Plug>(accelerated_jk_k)")
endfunction
