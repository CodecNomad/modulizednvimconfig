return {
    "neovim/nvim-lspconfig",
    init = function ()
        local lspconfig = require("lspconfig")

        lspconfig.lua_ls.setup{
            on_init = function(client)
                if client.workspace_folders then
                    local path = client.workspace_folders[1].name
                    if vim.uv.fs_stat(path..'/.luarc.json') or vim.uv.fs_stat(path..'/.luarc.jsonc') then
                        return
                    end
                end
                client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                    runtime = {
                        version = 'LuaJIT'
                    },
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME
                        }
                    }
                })
            end,
            settings = {
                Lua = {}
            }
        }

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

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true
        lspconfig.html.setup{
            capabilities = capabilities,
        }

        require'lspconfig'.html.setup {
            capabilities = capabilities,
        }
    end
}
