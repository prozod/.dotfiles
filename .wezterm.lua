-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 15.0

-- hide tab  and titlebar
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

-- cursor
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 400
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'

-- For example, changing the color scheme:
config.force_reverse_video_cursor = true
config.colors = {
  foreground = "#dcd7ba",
  background = "#141414",

  cursor_bg = "#c8c093",
  cursor_fg = "#c8c093",
  cursor_border = "#c8c093",

  selection_fg = "#c8c093",
  selection_bg = "#2d4f67",

  scrollbar_thumb = "#16161d",
  split = "#16161d",

  ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
  brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
  indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
}
-- config.window_background_image = '/Users/prozod/backgrounds/smooke.png'
-- config.window_background_image_hsb = {
--   brightness = 0.008,
-- }

--keybinds
config.keys = {
  { key = "h", mods = "CTRL", action = wezterm.action { SendString = "\x1bb" } },
  { key = "l", mods = "CTRL", action = wezterm.action { SendString = "\x1bf" } },
}

-- and finally, return the configuration to wezterm
return config
