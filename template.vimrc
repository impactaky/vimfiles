" vim
let g:my_vim_dir = '$HOME/vimfiles'

" clang settings
let g:my_libclang_path     = "/usr/lib/llvm-7/lib/libclang.so"
let g:my_clang_include_dir = "/usr/lib/llvm-7/include/"
let g:my_clang_option = ''

" vimproc
if has('kaoriya')
	let &runtimepath = &runtimepath.',<path_to_kaoriya_vim>\plugins\vimproc'
endif

set undodir=$HOME/vimfiles/undo

" デフォルトのmakeディレクトリ
let g:my_build_directory = './'

" let g:vimshell_interactive_encodings = {
" \}

" python3
let g:my_python3_path     = "/usr/bin/python3"

" for konsole
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
set guicursor=
