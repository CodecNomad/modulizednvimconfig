local plugins = {
    require "lua/plugins/catppuccin",
    require "lua/plugins/treesitter",
    require "lua/plugins/lspconfig",
    require "lua/plugins/nvimcmp",
    require "lua/plugins/neotree",
    "lambdalisue/vim-suda",
    "freddiehaddad/feline.nvim",
}
require("lazy").setup(plugins, {})
