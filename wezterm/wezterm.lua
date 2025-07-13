local wezterm = require("wezterm")
local config = {}
local act = wezterm.action
local theme = require("lua/rose-pine").main

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- config.default_prog = { "zsh" }

config.font = wezterm.font("MonoLisa Static")

config.font_size = 14

config.default_cursor_style = "BlinkingBar"
config.colors = theme.colors()

-- config.window_frame = theme.window_frame()

-- config.color_scheme = "Catppuccin Mocha"

-- config.colors = {
-- 	tab_bar = {
-- 		background = "#1e1e2e",
-- 		active_tab = {
-- 			bg_color = "#313244",
-- 			fg_color = "#e0def4",
-- 		},
-- 		inactive_tab = {
-- 			bg_color = "#1e1e2e",
-- 			fg_color = "#7e7eae",
-- 		},
-- 		inactive_tab_hover = {
-- 			bg_color = "#1e1e2e",
-- 			fg_color = "#e0def4",
-- 		},
-- 	},
-- }

config.tab_bar_at_bottom = true
config.adjust_window_size_when_changing_font_size = false

config.window_background_opacity = 0.9
config.window_padding = {
	left = 0,
	right = 0,
	top = 4,
	bottom = 4,
}
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.integrated_title_buttons = { "Hide", "Close" }
wezterm.on("format-window-title", function(event)
	return ""
end)

-- config.window_background_gradient = {
-- 	interpolation = "Linear",
--
-- 	orientation = "Vertical",
--
-- 	blend = "Rgb",
-- 	-- colors = {
-- 	-- 	"#1f1d2e",
-- 	-- 	"#191724",
-- 	-- },
-- 	colors = {
-- 		"#191724",
-- 		"#181825",
-- 	},
-- }

-- add window size initial coll and row
config.initial_cols = 140
config.initial_rows = 35

config.bypass_mouse_reporting_modifiers = "ALT"

config.keys = {
	{ key = "{", mods = "SHIFT|ALT", action = act.MoveTabRelative(-1) },
	-- move tab relative to right shift+alt+}
	{ key = "}", mods = "SHIFT|ALT", action = act.MoveTabRelative(1) },
	{ action = wezterm.action.DecreaseFontSize, mods = "CTRL", key = "-" },
	{ action = wezterm.action.ResetFontSize, mods = "CTRL", key = "0" },
	{ action = wezterm.action.ToggleFullScreen, key = "F11" },
	{
		key = "E",
		mods = "CTRL|SHIFT",
		action = act.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, pane, line)
				-- line will be `nil` if they hit escape without entering anything
				-- An empty string if they just hit enter
				-- Or the actual line of text they wrote
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
}

config.use_fancy_tab_bar = false

return config
