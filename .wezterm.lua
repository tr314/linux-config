-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Apply your config choices
config.color_scheme = 'Powershell (Gogh)'

-- Start powershell.
config.default_prog = {'pwsh.exe'}
config.default_cwd = '~'

-- Style inactive panes.
-- Turning the saturation down makes the contrast between active
-- and inactive panes obvious without adversely affectly readability.
config.inactive_pane_hsb = {
    saturation = 0.5
}

-- Keybindings
config.keys = {
    {
        key = 'g',
        mods = 'CTRL',
        action = wezterm.action.SplitVertical{
            domain = 'CurrentPaneDomain'
        },
    },
    {
        key = 'h',
        mods = 'CTRL',
        action = wezterm.action.SplitHorizontal{
            domain = 'CurrentPaneDomain'
        },
    },
    {
        key = 'w',
        mods = 'CTRL',
        action = wezterm.action.CloseCurrentPane {confirm = false},
    },
}

-- and finally, return the configuration to wezterm
return config
