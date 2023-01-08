require('lspconfig').clangd.setup {
    cmd = {
        vim.g['my_clangd']
    },
}
