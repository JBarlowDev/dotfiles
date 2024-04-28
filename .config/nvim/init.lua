require('lazyplug')
require('keymap')
require('options')
require("lsp")

require("plugConfig.treesitter")
require("completion")

require('lualine').setup()

require('plugConfig.toggleterm')
require('plugConfig.workspaces')
require('plugConfig.nvim-tree')
require('plugConfig.telescope')
require('plugConfig.whichKey')
require('plugConfig.bufferline')
--require('plugConfig.metals')
require('plugConfig.autopairs')
require('plugConfig.comment')
require('plugConfig.fidget')
require('plugConfig.todo-comments')
--require("plugConfig.neorg")

require('onedark').setup {
  style = 'darker'
}
require('onedark').load()

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

