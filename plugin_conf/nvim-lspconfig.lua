local nvim_lsp = require('lspconfig');
nvim_lsp.clangd.setup {
    cmd = {
        vim.g['my_clangd']
    },
}
vim.api.nvim_set_keymap("n", "g]", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "g[", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
