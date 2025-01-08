return {
  {
    {
      "folke/tokyonight.nvim",
      name = "tokyonight",
      enabled = true,
      priority = 1000,
      -- opts = {
      --   transparent = true,
      -- },
      -- config = function()
      -- require('tokyonight').setup(opts)
      -- vim.cmd([[colorscheme tokyonight-night]])
      -- end,
    },
  },
  {
    'navarasu/onedark.nvim',
    enabled = true,
    lazy = false,
    priority = 10000,
    opts = {
      style = 'darker'
    },
    -- config = function(_, opts)
    --   require('onedark').setup(opts)
    --   require('onedark').load()
    -- end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        blink_cmp = true,
      },
      custom_highlights = function(colors)
        return {
          MiniCursorword = { bg = colors.surface1, style = {} },
          MiniCursorwordCurrent = { style = {} },
        }
      end
    }
  }
}
