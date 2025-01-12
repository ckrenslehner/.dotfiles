local wezterm = require 'wezterm'

local mux = wezterm.mux
local act = wezterm.action


-- SECTION CONFIG
-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Window settings
config.adjust_window_size_when_changing_font_size = false
config.hide_tab_bar_if_only_one_tab = true
config.enable_scroll_bar = false

-- Color and font
-- config.color_scheme = 'Andromeda'
config.color_scheme = 'Catppuccin Mocha'

config.font = wezterm.font_with_fallback {
	'FiraCode Nerd Font',
	'JetBrains Mono',
  }

-- config.font_size = 10.0

-- config.window_frame = {
--  font = wezterm.font { family = 'Noto Sans', weight = 'Regular' },
-- }

config.window_close_confirmation = 'NeverPrompt'
config.use_fancy_tab_bar = false

-- Mouse action
config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action_callback(function(window, pane)
			local has_selection = window:get_selection_text_for_pane(pane) ~= ""
			if has_selection then
				window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
				window:perform_action(act.ClearSelection, pane)
			else
				window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
			end
		end),
	},
}

-- Start nushell
config.default_prog = { 'nu' }

-- and finally, return the configuration to wezterm
return config