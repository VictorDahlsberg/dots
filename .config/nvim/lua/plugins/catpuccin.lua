return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    init = function()
        vim.cmd.colorscheme("catppuccin")
    end,
    opts = {
        integrations = {
            cmp = true,
            leap = true,
            nvimtree = true,
            treesitter = true,
            mason = true,
            harpoon = true,
        },
        transparent_background = true
    }
}
