local wezterm = require 'wezterm'

local config = wezterm.config_builder()


config.color_scheme = 'Catppuccin Mocha'

-- Need this as otherwise doesn't open. Should be fixed in a new version soon
config.enable_wayland = false

config.font = wezterm.font('Iosevka Term', { stretch = 'Expanded' })
config.font_size = 11
config.line_height = 1.2


config.window_background_opacity = 0.75
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.use_fancy_tab_bar = false

wezterm.on('update-right-status', function(window, _)
  window:set_right_status(window:active_workspace())
end)

config.keys = {
    {
    key = 'f',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.TogglePaneZoomState,
  },
  { key = 'x', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentPane { confirm = false } },
  { key = 'h', mods = 'CTRL|SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'v', mods = 'CTRL|SHIFT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
  {
    key = 'r',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.PromptInputLine({
      description = 'Enter tab name:',
      action = wezterm.action_callback(function(window, _, line)
        if line then
          window:active_tab():set_title(line)
        end
      end),
    })
  },
  {
    key = 's',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ShowLauncherArgs { flags = 'FUZZY|WORKSPACES' },
  },
  { key = 'n', mods = 'CTRL|SHIFT', action = wezterm.action.SwitchWorkspaceRelative(1) },
  { key = 'p', mods = 'CTRL|SHIFT', action = wezterm.action.SwitchWorkspaceRelative(-1) },
}


return config
