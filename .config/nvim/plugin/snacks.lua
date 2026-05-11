vim.pack.add({
  'https://github.com/folke/snacks.nvim'
})

require('snacks').setup({
  dashboard = {
    enabled = true,
    preset = {
      keys = {
        { icon = '', key = 'f', desc = 'Find File',      action = '<leader>ff' },
        { icon = '', key = 'w', desc = 'Find Workspace', action = '<leader>fw' },
        { icon = '', key = 'l', desc = 'Open Lazy',      action = ':Lazy' },
        { icon = '', key = 'm', desc = 'Open Mason',     action = ':Mason' },
        { icon = '', key = 'q', desc = 'Quit',           action = ':q' },
      },
    },
    sections = {
      { section = 'header' },
      { section = 'keys' },
      -- { section = 'startup' } -- Requiers lazy plugin manager (can I change?)
    }
  },
  notifier = {},
  notify = {},
  indent = { enabled = false },
  dim = { enabled = false, animate = { enabled = true } },
  git = {},
  bigfile = {},
  scroll = {},
  animate = { enabled = true },
  picker = { ui_select = true },
})

local keymap = vim.keymap.set
keymap('n', '<Leader>un', function() require('snacks').notifier.show_history() end, { desc = 'Show notifictation history' })

keymap('n', '<Leader>uti',
  function()
    local Snacks = require('snacks')
    if (Snacks.indent.enabled) then
      Snacks.indent.disable()
    else
      Snacks.indent.enable()
    end
  end,
  { desc = 'Toggle indent guide' }
)

keymap('n', '<Leader>utd',
  function()
    local Snacks = require('snacks')
    if (Snacks.dim.enabled) then
      Snacks.dim.disable()
    else
      Snacks.dim.enable()
    end
  end,
  { desc = 'Toggle dim' }
)

keymap('n', '<Leader>uta',
  function()
    local Snacks = require('snacks')
    if (Snacks.animate.enabled()) then
      vim.g.snacks_animate = false
    else
      vim.g.snacks_animate = true
    end
  end,
  { desc = 'Toggle snacks animation' }
)

keymap('n', '<Leader>x', function() require('snacks').explorer() end, { desc = 'File Explorer' })
keymap('n', '<Leader><Leader>x', function() require('snacks').explorer.reveal() end, { desc = 'File Explorer' })
-- keymap('n', '<leader>e', function() require('snacks').picker.buffers({ current = false }) end, { desc = 'Buffers' })
-- { '<Leader>gb', function() require('snacks').git.blame_line() end,        desc = 'Git blame' },
