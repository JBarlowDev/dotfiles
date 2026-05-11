vim.pack.add({
  'https://github.com/lewis6991/gitsigns.nvim'
})

require('gitsigns').setup()

local keymap = vim.keymap.set
keymap('n', '<Leader>gB', ':Gitsigns blame<CR>', { desc = 'Git Blame File' })
keymap('n', '<Leader>gb', ':Gitsigns blame_line<CR>', { desc = 'Git Blame Line' })
keymap('n', '<Leader>utb', ':Gitsigns toggle_current_line_blame<CR>', { desc = 'Toggle Git Blame Line' })
