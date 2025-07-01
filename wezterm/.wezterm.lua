-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.colors = {
  -- The default text color
  foreground = '#ffffff',
  -- The default background color
  background = '#000000',

  tab_bar = {
    background = '#000000',

    active_tab = {
      bg_color = '#000000',
      fg_color = '#ffffff',
    },

    inactive_tab = {
      bg_color = '#000000',
      fg_color = '#555555',
    },

    new_tab = {
      bg_color = '#000000',
      fg_color = '#ffffff',
    },
  }
}

config.font =
  wezterm.font('Pixel Operator Mono')

config.window_background_opacity = 1

enable_tab_bar = true

config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  font = wezterm.font('Pixel Operator'),

    -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#000000',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#000000',
}

tab_bar_at_bottom = true
-- and finally, return the configuration to wezterm
return config
