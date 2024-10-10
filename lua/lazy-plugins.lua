local plugins = {
    require "plugins/catppuccin",
    require "plugins/treesitter",
    require "plugins/lspconfig",
    require "plugins/nvimcmp",
    require "plugins/neotree",
    "lambdalisue/vim-suda",
    "freddiehaddad/feline.nvim",
}
require("lazy").setup(plugins, {})
