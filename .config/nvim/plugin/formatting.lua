vim.pack.add({
  'https://github.com/stevearc/conform.nvim',
})

require('conform').setup()

local keymap = vim.keymap.set
keymap('n', '<leader><leader>f', function() require('conform').format({ async = true, lsp_fallback = true }) end, { desc = 'Format Buffer' })
