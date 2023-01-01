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
keymap('n', '<Leader>fw', ':Telescope workspaces<CR>', opts)


-- Notes (telekasten)
keymap('n', '<Leader>zf', ':lua require("telekasten").find_notes()<CR>', opts)

keymap('n', '<Leader>z', ':lua require("telekasten").panel()<CR>', opts)

-- Toggle term
keymap('n', '<Leader>to', ':ToggleTerm<CR>', opts)
keymap('t', '<ESC>', '<C-\\><C-n>', opts)

