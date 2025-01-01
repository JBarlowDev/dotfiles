return {
  {
    'hrsh7th/nvim-cmp',
    enabled = false,
    dependencies = {
      {
        'L3MON4D3/LuaSnip',
        dependencies = {
          'saadparwaiz1/cmp_luasnip',
          'rafamadriz/friendly-snippets',
        }
      },
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
    },
    opts = function()
      return require('plugins.config.completion')
    end
  },
  {
    'saghen/blink.cmp',
    lazy = false,
    version = 'v0.8.1',
    opts = {
      keymap = {
        preset = 'default',
        ['<C-CR>'] = { 'select_and_accept' },
        ['<Up>'] = { 'select_prev', 'fallback' },
        ['<Down>'] = { 'select_next', 'fallback' },
      },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
        ghost_text = {
          enabled = false
        },
        menu = {
          draw = {
            columns = {
              { "kind_icon", "label", "label_description", gap = 1 }, { "kind" },
            }
          },
          -- auto_show = function(ctx) return ctx.mode ~= 'cmdline' end
        }
      }
    },
    keys = {
      { "<leader>csr", function() require("blink.cmp").reload() end, desc = "Blink reload snippets" },
    }
  }
}
