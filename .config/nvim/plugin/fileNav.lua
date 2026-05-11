vim.pack.add({
  'https://github.com/kyazdani42/nvim-tree.lua',
  { src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' },
  'https://github.com/kyazdani42/nvim-web-devicons', -- TODO: Really need this or can use mini icons?
  'https://github.com/natecraddock/workspaces.nvim',
})


-- require("nvim-web-devicons").setup()
require('nvim-tree').setup({
  sync_root_with_cwd = true,
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
})

require('harpoon').setup()

local keymap = vim.keymap.set
keymap('n', '<Leader>m', function() require('harpoon'):list():add() end, { desc = 'Add harpoon mark' })
keymap('n', '<C-e>',
  function()
    local harpoon = require('harpoon')
    harpoon.ui:toggle_quick_menu(harpoon:list())
  end, { desc = 'Add harpoon mark' })
keymap('n', '<leader>1', function() require('harpoon'):list():select(1) end, { desc = 'Open harpoon 1' })
keymap('n', '<leader>2', function() require('harpoon'):list():select(2) end, { desc = 'Open harpoon 2' })
keymap('n', '<leader>3', function() require('harpoon'):list():select(3) end, { desc = 'Open harpoon 3' })
keymap('n', '<leader>4', function() require('harpoon'):list():select(4) end, { desc = 'Open harpoon 3' })


require("workspaces")
