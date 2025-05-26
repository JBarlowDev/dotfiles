local opts = require('configOptions')

local M = {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      highlight = {
        pattern = [[.*<(KEYWORDS)\s*]],
        keyword = "bg"
      }
    }
  },
  { "akinsho/bufferline.nvim", enabled = false, dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {} },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    main = 'lualine',
    opts = {
      sections = {
        lualine_a = { 'mode', 'searchcount' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { {'filename', path = 1} },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'lsp_status' },
        lualine_z = { 'location' }
      },
    }
  },
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
        },
      },
    }
  }
}

if (opts.animation == 'snacks') then
  table.insert(M, {
    "folke/snacks.nvim",
    enabled = true,
    opts = {
      animate = {},
    },
    keys = {
      {
        '<Leader>uta',
        function()
          local Snacks = require("snacks")
          if (Snacks.animate.enabled()) then
            vim.g.snacks_animate = false
          else
            vim.g.snacks_animate = true
          end
        end,
        desc = 'Toggle snacks animation'
      },
    }
  })
end

if (opts.animation == 'mini') then
  table.insert(M, {
    'echasnovski/mini.nvim',
    keys = {
      {
        '<Leader>uta',
        function()
          vim.g.minianimate_disable = not vim.g.minianimate_disable
        end,
        desc = 'Toggle mini animation'
      }
    },
  })
  require('mini.animate').setup({
    cursor = {
      enable = false
    }
  })
end

return M
