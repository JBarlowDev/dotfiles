vim.pack.add({
  { src = 'https://github.com/saghen/blink.cmp', version = 'v1.10.2' }
  -- 'https://github.com/rafamadriz/friendly-snippets'
})

require('blink.cmp').setup({
  keymap = {
    preset = 'default',
    ['<C-y>'] = { 'select_and_accept' },
    ['<C-CR>'] = { 'select_and_accept' },
    ['<Up>'] = { 'select_prev', 'fallback' },
    ['<Down>'] = { 'select_next', 'fallback' },
  },
  completion = {
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 500,
    },
    ghost_text = {
      enabled = false
    },
    menu = {
      draw = {
        columns = {
          { 'kind_icon', 'label', 'label_description', gap = 1 }, { 'kind' },
        }
      },
      -- auto_show = function(ctx) return ctx.mode ~= 'cmdline' end
    }
  }
})

local keymap = vim.keymap.set
keymap('n', '<leader>csr', function() require('blink.cmp').reload() end, { desc = 'Blink reload snippets' })
