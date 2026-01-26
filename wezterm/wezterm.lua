local wezterm = require 'wezterm'

local act = wezterm.action
local config = wezterm.config_builder()

-- theme and tab settings
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = 'Catppuccin Mocha'

-- font settings
config.font = wezterm.font("Fira Code", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/firacode/FiraCode-Regular.ttf, FontConfig
config.font_size = 12.0


local mykeys = {}
-- switch active tab
table.insert(mykeys, { key = '[', mods = 'CTRL|ALT', action = act.ActivateTabRelative(-1) })
table.insert(mykeys, { key = ']', mods = 'CTRL|ALT', action = act.ActivateTabRelative(1) })

config.keys = mykeys

return config
