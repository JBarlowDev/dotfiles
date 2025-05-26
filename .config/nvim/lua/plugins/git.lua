return {
  {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    main = 'gitsigns',
    opts = {},
    keys = {
      { '<Leader>gB', ':Gitsigns blame<CR>', desc = 'Git Blame File' },
      { '<Leader>gb', ':Gitsigns blame_line<CR>', desc = 'Git Blame Line' },
      { '<Leader>utb', ':Gitsigns toggle_current_line_blame<CR>', desc = 'Toggle Git Blame Line' },
    }
  }
}
