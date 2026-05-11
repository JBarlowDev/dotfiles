vim.pack.add { { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' } }

require('catppuccin').setup({
  integrations = {
    blink_cmp = true,
    fzf = true,
  },
  custom_highlights = function(colors)
    return {
      MiniCursorword = { bg = colors.surface1, style = {} },
      MiniCursorwordCurrent = { style = {} },
    }
  end
})

vim.cmd.colorscheme 'catppuccin-mocha'
