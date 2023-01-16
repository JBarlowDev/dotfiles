require('plugins')
require('keymap')
require('options')
require("lsp")

require'nvim-tree'.setup {}

require("plugConfig.treesitter")
require("completion")

require('lualine').setup()

require('plugConfig.orgmode')
require('plugConfig.toggleterm')
require('plugConfig.workspaces')
require('plugConfig.nvim-tree')
require('plugConfig.telescope')
require('plugConfig.whichKey')
require('plugConfig.bufferline')

require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

