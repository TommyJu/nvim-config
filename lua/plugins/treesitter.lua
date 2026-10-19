return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",

        config = function()
            local parsers = {
                "lua",
                "python",
                "javascript",
                "typescript",
                "html",
                "css",
                "json",
                "bash",
                "c",
                "cpp",
                "c_sharp",
                "java",
                "markdown",
            }

            -- Install the parsers if they aren't already installed.
            require("nvim-treesitter").install(parsers)

            -- Enable Tree-sitter highlighting for these filetypes.
            vim.api.nvim_create_autocmd("FileType", {
                pattern = parsers,
                callback = function(args)
                    pcall(vim.treesitter.start, args.buf)
                end,
            })
        end,
    },
}
