return {
  -- Understand why empty opts is needed, without it seems require('gitsigns').setup isn't called
  { 'lewis6991/gitsigns.nvim', main = 'gitsigns', opts = {} }
}
