vim.pack.add({
  'https://github.com/mfussenegger/nvim-dap',
  'https://github.com/rcarriga/nvim-dap-ui',
  'https://github.com/nvim-neotest/nvim-nio',
  'https://github.com/theHamsta/nvim-dap-virtual-text',
  'https://github.com/mfussenegger/nvim-dap-python',
})

-- TODO: I've not looked at any of the options here yet to see what can be changed
require('dapui').setup()
require("nvim-dap-virtual-text").setup()

require('dap-python').setup('python3')

local keymap = vim.keymap.set
keymap('n', '<leader>db', function() require('dap').toggle_breakpoint() end, { desc = 'Toggle Breakpoint' })
keymap('n', '<leader>dc', function() require('dap').continue() end, { desc = 'Continue' })
keymap('n', '<leader>dC', function() require('dap').run_to_cursor() end, { desc = 'Run to Cursor' })
keymap('n', '<leader>dt', function() require('dap').terminate() end, { desc = 'Terminate' })


keymap('n', '<leader>du', function() require('dapui').toggle() end, { desc = 'Toggle Debug UI' })
