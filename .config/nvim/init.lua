require('plugins')
require('keymap')
require('options')
require("lsp")
require("completion")

require'nvim-tree'.setup {}

require'nvim-treesitter.configs'.setup {
  highlight = { enable = true }
}

require'which-key'.setup()

require('lualine').setup()

require('plugConfig.notes')
require('plugConfig.neorg')

