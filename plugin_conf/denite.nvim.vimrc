call denite#custom#map('insert','<Esc>','<denite:enter_mode:normal>','noremap')
call denite#custom#map('insert','<Down>','<denite:move_to_next_line>','noremap')
call denite#custom#map('insert','<Up>', '<denite:move_to_previous_line>','noremap')

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
