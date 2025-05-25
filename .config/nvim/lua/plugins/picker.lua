return {
  -- {
  --   'nvim-telescope/telescope.nvim',
  --   dependencies = { 'nvim-lua/plenary.nvim' },
  --   opts = {
  --     defaults = {
  --       file_ignore_patterns = {
  --         ".build"
  --       },
  --       mappings = {
  --         n = {
  --           ['<c-d>'] = require('telescope.actions').delete_buffer
  --         },
  --         i = {
  --           ['<esc>'] = require('telescope.actions').close,
  --           ['<c-d>'] = require('telescope.actions').delete_buffer
  --         }
  --       }
  --     },
  --     pickers = {
  --       buffers = {
  --         sort_lastused = true,
  --         sort_mru = true
  --       },
  --       colorscheme = {
  --         enable_preview = true
  --       }
  --     },
  --     extensions = {
  --       ["ui-select"] = {
  --         require("telescope.themes").get_cursor()
  --       }
  --     }
  --   }
  -- },
  {
    'nvim-telescope/telescope-ui-select.nvim'
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local fzfLua = require("fzf-lua")
      fzfLua.setup({
        winopts = {
          width = 1,
          row = 1,
        },
        file_ignore_patterns = { ".next" }
      })
      -- fzfLua.register_ui_select()
      fzfLua.register_ui_select(function(_, items)
        local min_h, max_h = 0.15, 0.70
        local h = (#items + 4) / vim.o.lines
        if h < min_h then
          h = min_h
        elseif h > max_h then
          h = max_h
        end
        return { winopts = { height = h, width = 0.60, row = 0.40 } }
      end)
    end,
    keys = {
      { "<Leader>ff", function() require('fzf-lua').files() end,                                        desc = "Fzf find files" },
      { "<Leader>fg", function() require('fzf-lua').live_grep_glob() end,                               desc = "Fzf live grep" },
      { "<Leader>fg", function() require('fzf-lua').grep_visual() end,                                  desc = "Fzf grep visual", mode = 'v' },
      { "<Leader>fs", function() require('fzf-lua').grep_cword() end,                                   desc = "Fzf live grep" },
      { "<Leader>fd", function() require('fzf-lua').lsp_workspace_diagnostics() end,                    desc = "Fzf lsp workspace diagnostics" },
      { "<Leader>ft", ":TodoFzfLua<CR>",                                                                desc = "Fzf todo finder" },
      { "<Leader>e",  function() require('fzf-lua').buffers() end,                                      desc = "Fzf buffers" },
      { "<Leader>fc", function() require('fzf-lua').commands() end,                                     desc = "Fzf commands" },
      { "<Leader>fh", function() require('fzf-lua').helptags() end,                                     desc = "Fzf helptags" },
      { "<Leader>fx", function() require('fzf-lua').builtin() end,                                      desc = "Fzf builtins (all the others)" },
      -- { "<Leader>gr", function() require('fzf-lua').lsp_references({ ignore_current_line = true }) end, desc = "Fzf lsp references" },
      { "<Leader>gs", function() require('fzf-lua').git_status() end,                                   desc = "Fzf git status" },
    },

  }
}
