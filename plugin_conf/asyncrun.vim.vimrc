augroup vimrc
    autocmd User AsyncRunStart
                \ execute winwidth(0) * 2 < winheight(0) * 5 ?
                \ printf("copen %d", winheight(0)/2) :
                \ printf("vertical copen %d", winwidth(0)/2)
                \ | wincmd p
augroup END

function! QuickAsyncRun()
    if exists('b:quick_async_run_command')
        execute(printf('AsyncRun %s', b:quick_async_run_command))
    else
        execute(':QuickRun')
    endif
endfunction
