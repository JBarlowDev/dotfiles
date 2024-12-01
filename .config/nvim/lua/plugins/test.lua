return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      --    "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      'nvim-neotest/neotest-jest',
    },
    config = function(_, opts)
      require('neotest').setup({
        adapters = {
          require('neotest-jest')
        },
        quickfix = {
          -- open = function()
          --   vim.cmd("copen")
          -- end
        }
      })
    end,
    keys = {
      { "<leader>t",  "",                                                            desc = "test" },
      { "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
      { "<leader>to", function() require("neotest").output_panel.toggle() end,       desc = "Show Output" },
      { "<leader>ts", function() require("neotest").summary.toggle() end,            desc = "Show Summary" },
    }
  }
}
