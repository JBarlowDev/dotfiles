require('options')
require('keymap')
require('lsp')

-- Simple highlight on yank while getting used to motions
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.diagnostic.config({ virtual_lines = { current_line = true } })
