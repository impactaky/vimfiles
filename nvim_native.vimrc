set background=dark
set browsedir=current
set clipboard+=unnamedplus
set completeopt=menuone
set confirm
set cursorline
set diffopt="filler, iwhite, vertical"
set expandtab
set formatoptions+=mM
set ignorecase
set inccommand=nosplit
set lazyredraw
set linebreak
set noshowmode
set nostartofline
set noswapfile
set notitle
set nowrap
set number
set relativenumber
set scrolloff=2
set shiftround
set shiftwidth=0
set shortmess="aoOtTAIcF"
set showbreak=+++\  
set showfulltag
set showmatch
set signcolumn=yes
set smartcase
set smartindent
set softtabstop=4
set splitbelow
set splitright
set switchbuf="useopen,usetab,split"
set tabstop=4
set undofile
set undolevels=1000
set virtualedit+=block
set wildmode=longest:list,full

function! VirtMove(move_command) abort range
    normal! gv
    let pos = getpos(".")
    let col = pos[2]+pos[3]-1
    execute "normal! ".a:move_command
    let line = line(".")
    call cursor(line, 0, col)
endfunction

function! NextColBlank() abort range
    normal! gv
    let line = 1
    while (strdisplaywidth(getline(line(".")+line)) >= virtcol("."))
        let line += 1
    endwhile
    execute "normal! ".string(line)."j"
endfunction
xmap } :'<,'>call NextColBlank()<CR>

function! PrevColBlank() abort range
    normal! gv
    let line = 1
    while (strdisplaywidth(getline(line(".")-line)) >= virtcol("."))
        let line += 1
    endwhile
    execute "normal! ".string(line)."k"
endfunction
xmap { :'<,'>call PrevColBlank()<CR>

" ヤンクでカーソル位置の単語を置換
nnoremap <silent> ciy ce<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
noremap Y y$              
noremap <C-[> $

" mark
nnoremap '' '
nnoremap "" "
nnoremap mm m

" q use as prefix
nnoremap qq q
