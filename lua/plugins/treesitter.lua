return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    init = function ()
        require("nvim-treesitter.configs")
            .setup(
                {
                    ensure_installed = {
                        "lua",
                        "python",
                        "javascript",
                        "typescript",
                        "rust",
                        "css",
                        "html"
                    },
                    highlight = {
                        enable = true
                    },
                    indent = {
                        enable = true
                    },
                    autopairs = {
                        enable = true
                    },
                }
            )
    end
}


