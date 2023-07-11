return require('packer').startup(function()

use 'wbthomason/packer.nvim'

use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icon
  }
}

-- Telescope
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use { 'nvim-telescope/telescope-ui-select.nvim' }

-- Treesitter
use {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate'
}

-- Status Line
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

-- Completion
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'

use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
use 'rafamadriz/friendly-snippets'

-- LSP
use "williamboman/mason.nvim"
use "williamboman/mason-lspconfig.nvim"
use "neovim/nvim-lspconfig"
use "j-hui/fidget.nvim"

-- Scala
use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})

--use {'nvim-orgmode/orgmode', config = function()
--        require('orgmode').setup{}
--end
--}

use {
  "nvim-neorg/neorg",
  run = ":Neorg sync-parsers"
}


-- Workspace
use 'natecraddock/workspaces.nvim'

-- Bufferline
use 'akinsho/bufferline.nvim'

-- Terminal
use 'akinsho/toggleterm.nvim'

-- Git
use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

-- Util
use "folke/which-key.nvim"
use "windwp/nvim-autopairs"
use "terrortylor/nvim-comment"

-- Colour Schemes
--use 'arcticicestudio/nord-vim'
--use 'EdenEast/nightfox.nvim'
--use 'ful1e5/onedark.nvim'
use 'navarasu/onedark.nvim'

end)
