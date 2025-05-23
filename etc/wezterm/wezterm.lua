-- Pull the wezterm API.
local wezterm = require("wezterm")
local act = wezterm.action

-- Put your configurations onto the table!
local config = {}

-- Fits the interior.
config.use_fancy_tab_bar = false
-- No scroll bar. Keep it simple.
config.enable_scroll_bar = false

-- Use Tokyo Night colorscheme.
config.color_scheme = "Tokyo Night Storm"

-- Set windows padding.
local padding = "36px"
config.window_padding = {
	left = padding,
	bottom = padding,
	top = padding,
	right = padding
}

-- Fonts.
config.font = wezterm.font_with_fallback({
	"Comic Code",
	"LXGW WenKai Mono",
	"FiraMono Nerd Font Mono",
})
config.font_size = 15

-- Keymaps {{{

-- Disable default key bindings and define custom ones.
config.disable_default_key_bindings = true
config.keys = {
	{ key = "C", mods = "SHIFT|CTRL", action = act.CopyTo("Clipboard") },
	{ key = "V", mods = "SHIFT|CTRL", action = act.PasteFrom("Clipboard") },

	-- Decrease/Increase font size.
	{ key = "-", mods = "ALT", action = act.DecreaseFontSize },
	{ key = "=", mods = "ALT", action = act.IncreaseFontSize },

	{ key = "T", mods = "ALT", action = act.SpawnTab("CurrentPaneDomain") }
}

--- }}}

return config
