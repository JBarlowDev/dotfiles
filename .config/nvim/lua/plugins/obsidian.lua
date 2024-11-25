return {
  {
    "epwalsh/obsidian.nvim",
    lazy = true,
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Documents/Personal",
        }
      },
      ui = { enable = false }, -- using render-markdown and need to avoid a conflict
      note_id_func = function(title)
        return title
      end,
    },
    keys = {
      { "<leader>of", "<cmd>ObsidianQuickSwitch<CR>", desc = "Open Note" }
    }
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
    opts = {},
  }
}

