local plugins = {
    require "plugins/catppuccin",
    require "plugins/treesitter",
    require "plugins/lspconfig",
    require "plugins/nvimcmp",
    require "plugins/neotree",
    require "plugins/feline",
    "lambdalisue/vim-suda",
}
require("lazy").setup(plugins, {})
