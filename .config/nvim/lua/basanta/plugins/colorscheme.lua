local function apply_color_scheme(colorscheme)
    vim.cmd.colorscheme(colorscheme)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            apply_color_scheme("catppuccin-macchiato")
        end,
    },
}
