" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
    \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> t
    \ denite#do_map('do_action', 'tabopen')
    nnoremap <silent><buffer><expr> d
    \ denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> p
    \ denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> q
    \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> i
    \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <Space>
    \ denite#do_map('toggle_select').'j'
endfunction
" call denite#custom#map('insert','<Esc>','<denite:enter_mode:normal>','noremap')
" call denite#custom#map('insert','<Down>','<denite:move_to_next_line>','noremap')
" call denite#custom#map('insert','<Up>', '<denite:move_to_previous_line>','noremap')

call denite#custom#source('_', 'matchers', ['matcher_substring'])

" Ripgrep command on grep source
if executable('ripgrep')
	call denite#custom#var('grep', 'command', ['ripgrep'])
	call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])
endif

" let s:denite_win_width_percent = 0.85
" let s:denite_win_height_percent = 0.4
"
" " Change denite default options
" call denite#custom#option('default', {
"     \ 'split': 'floating',
"     \ 'winwidth': float2nr(&columns * s:denite_win_width_percent),
"     \ 'wincol': float2nr((&columns - (&columns * s:denite_win_width_percent)) / 2),
"     \ 'winheight': float2nr(&lines * s:denite_win_height_percent),
"     \ 'winrow': float2nr((&lines - (&lines * s:denite_win_height_percent)) / 2),
"     \ })
