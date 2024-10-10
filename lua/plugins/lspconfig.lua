return {
    "neovim/nvim-lspconfig",
    init = function ()
        local lspconfig = require("lspconfig")

        lspconfig.lua_ls.setup{}
        lspconfig.ts_ls.setup{}
        lspconfig.pyright.setup{}
        lspconfig.eslint.setup{}
        lspconfig.rust_analyzer.setup{
            cmd = {
                "rustup",
                "run",
                "stable",
                "rust-analyzer"
            },
        }
        lspconfig.html.setup{}
    end
}
