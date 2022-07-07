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
use "williamboman/nvim-lsp-installer"
use "neovim/nvim-lspconfig"

-- Notes
use 'renerocksai/telekasten.nvim'

--use {
--    "nvim-neorg/neorg",
    -- tag = "latest",
    --ft = "norg",
    --after = {"nvim-treesitter", "nvim-telescope"},
--}

use {'nvim-orgmode/orgmode', config = function()
        require('orgmode').setup{}
end
}

-- Util
use "folke/which-key.nvim"

-- Colour Schemes
use 'arcticicestudio/nord-vim'

end)
