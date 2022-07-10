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


-- Notes (telekasten)
keymap('n', '<Leader>zf', ':lua require("telekasten").find_notes()<CR>', opts)

keymap('n', '<Leader>z', ':lua require("telekasten").panel()<CR>', opts)

-- Neorg Not using default https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
--keymap('n', '<Leader>otc', ':Neorg keybind norg core.gtd.base.capture<CR>', opts)
--keymap('n', '<Leader>otv', ':Neorg keybind norg core.gtd.base.views<CR>', opts)
--keymap('n', '<Leader>ote', ':Neorg keybind norg core.gtd.base.edit<CR>', opts)
--keymap('n', '<Leader>ott', ':Neorg keybind norg core.norg.qol.todo_items.todo.task_cycle<CR>', opts)
--keymap('n', '<Leader>oo', ':Neorg keybind norg core.norg.esupports.hop.hop-link<CR>', opts)

-- Toggle term
keymap('n', '<Leader>to', ':ToggleTerm<CR>', opts)
keymap('t', '<ESC>', '<C-\\><C-n>', opts)

