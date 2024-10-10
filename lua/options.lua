vim.cmd([[
    set expandtab
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set nu
    set relativenumber
    set cursorline
    set autoindent
    set smartindent
]])

vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.api.nvim_set_option("clipboard", "unnamedplus")
