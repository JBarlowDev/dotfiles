require('lazyconf')
require('keymap')
require('options')
require("lsp")

-- Simple highlight on yank while getting used to motions
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.cmd.colorscheme "catppuccin-mocha"

