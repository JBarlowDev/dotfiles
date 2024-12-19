return {
  -- {
  --   'hrsh7th/nvim-cmp',
  --   dependencies = {
  --     {
  --       'L3MON4D3/LuaSnip',
  --       dependencies = {
  --         'saadparwaiz1/cmp_luasnip',
  --         'rafamadriz/friendly-snippets',
  --       }
  --     },
  --     'hrsh7th/cmp-nvim-lsp',
  --     'hrsh7th/cmp-buffer',
  --     'hrsh7th/cmp-path',
  --     'hrsh7th/cmp-cmdline',
  --   },
  --   opts = function()
  --     return require('plugins.config.completion')
  --   end
  -- },
  {
    'saghen/blink.cmp',
    lazy = false,
    version = 'v0.7.6',
    opts = {
      keymap = {
        preset = 'default',
        ['<C-CR>'] = { 'select_and_accept' }
      }
    }
  }
}
