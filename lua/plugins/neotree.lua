local NeoTreeOpen = false
local NeoTreeWindowID = nil

local function IsNeoTreeFocused()
    return NeoTreeWindowID and vim.api.nvim_win_is_valid(NeoTreeWindowID) and vim.api.nvim_get_current_win() == NeoTreeWindowID
end

local function ToggleNeoTree()
    if NeoTreeOpen and IsNeoTreeFocused() then
        vim.cmd("q")
        NeoTreeOpen = false
    else
        vim.cmd("Neotree")
        NeoTreeWindowID = vim.api.nvim_get_current_win()
        NeoTreeOpen = true
    end
end

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    init = function ()
        require("neo-tree").setup()
        vim.keymap.set("n", "<C-n>", ToggleNeoTree)
    end
}
