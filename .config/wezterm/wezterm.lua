local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
    -- General
    initial_cols = 120,
    initial_rows = 28,
    font_size = 14,
    line_height = 1.2,
    font = wezterm.font("JetBrains Maple Mono"),
    color_scheme = 'Gruber (base16)',
    window_decorations = "RESIZE",
    window_close_confirmation = "NeverPrompt",
    enable_tab_bar = false,
    window_padding = {
        left = 4,
        right = 4,
        top = 2,
        bottom = 2
    },

    -- Key bindings 
    keys = {
        {
            key = "w",
            mods = "CMD",
            action = wezterm.action.CloseCurrentPane { confirm = false },
        },
    }
}

return config
