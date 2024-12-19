local opts = {}
local keymap = vim.keymap.set

-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- Helpers
keymap('n', '<Leader>s', ':w<CR>', opts)
keymap('v', '<Leader>d', '"_d', opts)
keymap('v', '<Leader>p', '"_dP', opts)
keymap({ 'n', 'i', 's' }, '<esc>', function()
  vim.cmd("noh")
  return "<esc>"
end, { expr = true, desc = 'Better ESC' })

-- UI
keymap('n', '<Leader>ut', ':NvimTreeToggle<CR>', opts)
keymap('n', '<Leader>uct', ':NvimTreeFindFile<CR>', opts)

-- Buffers
keymap('n', '<Leader>bn', ':bn<CR>', opts)
keymap('n', '<Leader>bp', ':bp<CR>', opts)
keymap('n', '<Leader>bl', ':bl<CR>', opts)
keymap('n', '<Leader>bd', ':bd<CR>', opts)
keymap('n', '<Leader>bk', ':%bd<CR>', opts)

-- Telescope
keymap('n', '<Leader>gs', ':Telescope git_status<CR>', opts)
keymap('n', '<Leader>fs', ':Telescope grep_string<CR>', opts)
keymap('n', '<Leader>fw', ':Telescope workspaces<CR>', opts)
keymap('n', '<Leader>fd', ':Telescope diagnostics<CR>', opts)
keymap('n', '<Leader>ft', ':TodoTelescope<CR>', opts)

-- Toggle term
keymap('n', '<Leader>to', ':ToggleTerm<CR>', opts)
keymap('t', '<ESC>', '<C-\\><C-n>', opts)
keymap('t', '<C-w>', '<C-\\><C-n><C-w>', opts)

keymap({ "n", "v" }, '<CR>', '<CMD>lua MiniJump2d.start(MiniJump2d.builtin_opts.word_start)<CR>', opts)
keymap({ "n", "v" }, '<Leader><CR>', '<CMD>lua MiniJump2d.start(MiniJump2d.builtin_opts.single_character)<CR>', opts)


-- Obsidian
-- keymap('n', '<Leader>of', ':ObsidianQuickSwitch<CR>', opts)

-- keymap('n', '<Leader>gR', ':Telescope lsp_references<CR>', opts)


-- lsp
-- keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
