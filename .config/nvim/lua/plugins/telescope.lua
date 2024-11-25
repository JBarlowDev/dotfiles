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
}
