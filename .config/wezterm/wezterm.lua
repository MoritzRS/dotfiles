local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.enable_wayland = false

config.window_decorations = "TITLE | RESIZE"
config.enable_tab_bar = false
wezterm.on("format-window-title", function() return "Wezterm" end)

config.color_scheme = "Tokyo Night"
config.window_padding = { left = 2, right = 2, top = 0, bottom = 0 }


return config
