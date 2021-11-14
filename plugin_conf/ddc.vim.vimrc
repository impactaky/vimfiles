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

call ddc#custom#patch_global('sources', ['vim-lsp', 'around'])
call ddc#custom#patch_global('sourceOptions', {
      \ '_': { 'matchers': ['matcher_head'], 'sorters': ['sorter_rank'], },
      \ 'vim-lsp': { 'mark': 'lsp' },
      \ })

call ddc#custom#patch_global('autoCompleteEvents', [
    \ 'InsertEnter', 'TextChangedI', 'TextChangedP',
    \ 'CmdlineEnter', 'CmdlineChanged',
    \ ])
call ddc#custom#patch_global('completionMenu', 'pum.vim')


" Use Customized labels
call ddc#custom#patch_global('sourceParams', {
      \ })
call ddc#enable()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
