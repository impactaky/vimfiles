" vim
let g:my_vim_dir = '$HOME/vimfiles'

let mapleader = "'"

" clang settings
let g:my_libclang_path     = "/usr/lib/llvm-9/lib/libclang.so"
let g:my_clang_include_dir = "/usr/lib/llvm-9/include/"
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

set guicursor=
