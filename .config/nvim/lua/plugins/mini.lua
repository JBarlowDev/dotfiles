return {
  {
    'echasnovski/mini.nvim',
    version = false,
    config = function()
      -- Changes s
      require('mini.surround').setup()

      -- Look to add brackets with spaces
      -- require('mini.surround').setup({
      --   custom_aurroundings = {
      --     -- Lua long brackets
      --     s = {
      --       -- Configuration for "input" (like for delete) is done with Lua patterns
      --       input = { find = '%[%[.-%]%]', extract = '^(..).*(..)$' },
      --       -- Configuration for "output" (like for add) is done with plain text
      --       output = { left = '[[', right = ']]' },
      --     },
      --     -- Use `(` to insert with spaces, `)` will still add without them
      --     ['('] = { output = { left = '( ', right = ' )' } },
      --   },
      -- })

      require('mini.ai').setup()

      require('mini.comment').setup()

      require('mini.jump').setup()
      require('mini.jump2d').setup()
      require('mini.icons').setup()
      require('mini.operators').setup({
        sort = {
          prefix = 'gb',
        }
      })
    end
  },
}
