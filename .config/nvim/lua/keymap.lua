local opts = { noremap = true }
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Helpers
keymap('n', '<Leader>s', ':w<CR>', opts)


-- Nvim Tree
keymap('n', '<Leader>tt', ':NvimTreeToggle<CR>', opts)

-- Telescope
keymap('n', '<Leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<Leader>fs', ':Telescope grep_string<CR>', opts)





