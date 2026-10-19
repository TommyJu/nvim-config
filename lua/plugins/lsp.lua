return {
    {
        "neovim/nvim-lspconfig",
        lazy = false,

        config = function()
            vim.lsp.enable({
                "pyright", 
                "ts_ls",  
            })
        end,
    },
}
