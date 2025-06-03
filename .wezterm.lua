-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = "Kanagawa (Gogh)"
config.enable_tab_bar = true
config.font = wezterm.font("MesloLGM Nerd Font Mono")
config.font_size = 14
config.initial_cols = 144
config.initial_rows = 36
config.macos_window_background_blur = 10
config.window_background_opacity = 0.95
config.window_decorations = "RESIZE"

-- Customizing the key mapping
local act = wezterm.action
config.keys = {
    { mods = "OPT",              key = "LeftArrow",  action = act.SendKey({ mods = "ALT", key = "b" }) },
    { mods = "OPT",              key = "RightArrow", action = act.SendKey({ mods = "ALT", key = "f" }) },
    { mods = "CMD",              key = "LeftArrow",  action = act.SendKey({ mods = "CTRL", key = "a" }) },
    { mods = "CMD",              key = "RightArrow", action = act.SendKey({ mods = "CTRL", key = "e" }) },
    { mods = "CMD",              key = "Backspace",  action = act.SendKey({ mods = "CTRL", key = "u" }) },
    { mods = "SUPER|CTRL|SHIFT", key = "[",          action = act.MoveTabRelative(-1) },
    { mods = "SUPER|CTRL|SHIFT", key = "]",          action = act.MoveTabRelative(1) }
}

-- and finally, return the configuration to wezterm
return config
