require('plugins')
require('keymap')
require('options')
require("lsp")

require'nvim-tree'.setup {}

require("plugConfig.treesitter")
require("completion")

require'which-key'.setup()

require('lualine').setup()

require('plugConfig.notes')
--require('plugConfig.neorg')
require('plugConfig.orgmode')
