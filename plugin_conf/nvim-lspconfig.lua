local nvim_lsp = require('lspconfig');
nvim_lsp.clangd.setup {
    cmd = {
        vim.g['my_clangd']
    },
}
