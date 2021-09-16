" call ddc#custom#patch_global('sources', ['nvimlsp'])
" call ddc#custom#patch_global('sourceOptions', {
"       \ '_': {
"       \   'matchers': ['matcher_head'],
"       \ },
"       \ 'nvimlsp': { 'mark': 'lsp', 'forceCompletionPattern': '\.|:|->' },
" \ })
" " Use Customized labels
" call ddc#custom#patch_global('sourceParams', {
"       \ 'nvimlsp': { 'kindLabels': { 'Class': 'c' } },
"       \ })
" call ddc#enable()

call ddc#custom#patch_global('sources', ['nvimlsp', 'around'])
call ddc#custom#patch_global('sourceOptions', {
      \ '_': { 'matchers': ['matcher_head'], 'sorters': ['sorter_rank'], },
      \ 'nvimlsp': {'mark': 'lsp', 'forceCompletionPattern': "\\.|:\\s*|->"},
      \ })

" Use Customized labels
call ddc#custom#patch_global('sourceParams', {
      \ 'nvimlsp': { 'kindLabels': { 'Class': 'c' } },
      \ })
call ddc#enable()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
