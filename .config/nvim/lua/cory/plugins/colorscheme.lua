return {
    {
        "sainnhe/gruvbox-material",
        priority = 1000,
        lazy = false,
        config = function()
            vim.g.gruvbox_material_foreground = "material"
            vim.g.gruvbox_material_background = "medium"
            vim.cmd.colorscheme("gruvbox-material")
        end,
    },
}

