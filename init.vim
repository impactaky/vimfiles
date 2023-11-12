set fileencodings=utf-8,ucs-bom,euc-jp,eucjp-ms,cp932
set fileformats=unix,dos,mac

" 全角スペースは赤くする
augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkRed guibg=DarkRed
  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

" typo防止用alias
command! -nargs=0 Wq wq
command! -nargs=0 W w
command! -nargs=0 Q q
imap OA <Up>
imap OB <Down>
imap OC <Right>
imap OD <Left>

runtime! nvim_native.vimrc

if filereadable("./.run_command.sh")
    if filereadable("CMakeLists.txt") && isdirectory("build")
        let g:quick_async_run_command='ninja -C build && sh -c "$(cat .run_command.sh)"'
    else
        let g:quick_async_run_command='sh -c "$(cat .run_command.sh)"'
    endif
    let g:quick_print_debug#run_command="$(cat .run_command.sh)"
endif

runtime! template.vimrc
runtime! my_conf.vimrc
" 1つ上のディレクトリのws.vimrcを読み込む
if filereadable("../ws.vimrc")
	source ../ws.vimrc
endif
" localの設定ファイルがあれば読み込む
if filereadable("./local.vimrc")
	source ./local.vimrc
endif

set runtimepath^=$HOME/.dein/repos/github.com/Shougo/dein.vim
if dein#load_state("$HOME/.dein")
	call dein#begin("$HOME/.dein")
    call dein#load_toml("$HOME/vimfiles/common.toml")
    if !exists('g:vscode')
        call dein#load_toml("$HOME/vimfiles/dein.toml")
    endif
	if filereadable(expand("$HOME/vimfiles/local_dein.toml"))
		call dein#load_toml("$HOME/vimfiles/local_dein.toml")
	endif
	call dein#end()
endif
if dein#check_install()
  call dein#install()
endif

" 256色表示設定
set t_Co=256
set termguicolors
runtime! colors_conf/iceberg.vimrc

" ヘルプを日本語にする
set helplang=ja

if executable("zsh")
	set sh=zsh
elseif has("win32")
	set sh=powershell
endif
tnoremap <silent> <ESC> <C-\><C-n>

function! OscYank() range
    let tmp = @@
    silent normal gvy
    let selected_text = @@
    let @@ = tmp
    call chansend(v:stderr, printf("\x1b]52;;%s\x1b\\", system("base64", selected_text)))
endfunction
vmap <Leader>y :call OscYank()<CR>

if exists('g:vscode')
    vmap ga= <Cmd>call VSCodeCall("codealignment.alignbyequals")<CR><Esc>
    vmap ga. <Cmd>call VSCodeCall("codealignment.alignbyperiod")<CR><Esc>
    vmap ga' <Cmd>call VSCodeCall("codealignment.alignbyquote")<CR><Esc>
    vmap ga<Space> <Cmd>call VSCodeCall("codealignment.alignbyspace")<CR><Esc>
    nmap g] gd
    nmap g[ gH
    map <Leader>c <C-/> 
endif
