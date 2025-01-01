return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      defaults = {
        file_ignore_patterns = {
          ".build"
        },
        mappings = {
          n = {
            ['<c-d>'] = require('telescope.actions').delete_buffer
          },
          i = {
            ['<esc>'] = require('telescope.actions').close,
            ['<c-d>'] = require('telescope.actions').delete_buffer
          }
        }
      },
      pickers = {
        buffers = {
          sort_lastused = true,
          sort_mru = true
        },
        colorscheme = {
          enable_preview = true
        }
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_cursor()
        }
      }
    }
  },
  {
    'nvim-telescope/telescope-ui-select.nvim'
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("fzf-lua").setup({
        winopts = {
          width = 1,
          row = 1,
          -- preview = {
          --   border = 'noborder',
          -- }
        },
      })
    end,
    keys = {
      { "<Leader>ff", function() require('fzf-lua').files() end,                     desc = "Fzf find files" },
      { "<Leader>fg", function() require('fzf-lua').live_grep_glob() end,            desc = "Fzf live grep" },
      { "<Leader>fs", function() require('fzf-lua').grep_cword() end,                desc = "Fzf live grep" },
      { "<Leader>fd", function() require('fzf-lua').lsp_workspace_diagnostics() end, desc = "Fzf lsp workspace diagnostics" },
      { "<Leader>ft", ":TodoFzfLua<CR>", desc = "Fzf todo finder" },
      { "<Leader>e",  function() require('fzf-lua').buffers() end,                   desc = "Fzf buffers" },
      { "<Leader>fc", function() require('fzf-lua').commands() end,                  desc = "Fzf commands" },
      { "<Leader>fh", function() require('fzf-lua').helptags() end,                  desc = "Fzf helptags" },
      { "<Leader>fx", function() require('fzf-lua').builtin() end,                   desc = "Fzf builtins (all the others)" },
      { "<Leader>gs", function() require('fzf-lua').git_status() end,                desc = "Fzf git status" },
    }
  }
}
