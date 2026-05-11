vim.pack.add({
  'https://github.com/epwalsh/obsidian.nvim',
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
})

require('render-markdown').setup({})

require('obsidian').setup({
  workspaces = {
    {
      name = 'notes',
      path = '~/notes',
    }
  },
  ui = { enable = false },     -- using render-markdown and need to avoid a conflict
  note_id_func = function(title)
    return title
  end,
})


local keymap = vim.keymap.set
keymap('n', '<Leader>of', '<cmd>ObsidianQuickSwitch<CR>', { desc = 'Open Note' })
