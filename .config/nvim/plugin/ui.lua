vim.pack.add({
  'https://github.com/folke/which-key.nvim',
  'https://github.com/folke/todo-comments.nvim',
  'https://github.com/nvim-lualine/lualine.nvim',
})

require('todo-comments').setup({
  highlight = {
    pattern = [[.*<(KEYWORDS)\s*]],
    keyword = 'bg'
  }
})

require('lualine').setup({
  sections = {
    lualine_a = { 'mode', 'searchcount' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { { 'filename', path = 1 } },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'lsp_status' },
    lualine_z = { 'location' }
  },
})
