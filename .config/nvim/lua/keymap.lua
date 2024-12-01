local opts = { noremap = true }
local keymap = vim.api.nvim_set_keymap

-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- Helpers
keymap('n', '<Leader>s', ':w<CR>', opts)
--keymap('i', 'tn', '<ESC>', opts)
keymap('v', '<Leader>d', '"_d', opts)
keymap('v', '<Leader>p', '"_dP', opts)
keymap('n', '<Leader>ww', '<C-w>w', opts)
keymap('n', '<Leader>cc', ':noh<CR>', opts)

-- Nvim Tree
keymap('n', '<Leader><Leader>t', ':NvimTreeToggle<CR>', opts)

-- Buffers
keymap('n', '<Leader>bb', ':Telescope buffers<CR>', opts)
keymap('n', '<Leader>e', ':Telescope buffers<CR>', opts) -- Trying out
keymap('n', '<Leader>bn', ':bn<CR>', opts)
keymap('n', '<Leader>bp', ':bp<CR>', opts)
keymap('n', '<Leader>bl', ':bl<CR>', opts)
keymap('n', '<Leader>bd', ':bd<CR>', opts)
keymap('n', '<Leader>bk', ':bd<CR>', opts)

-- Telescope
keymap('n', '<Leader>fb', ':Telescope buffers sort_lastused=true<CR>', opts)
keymap('n', '<Leader>ff', ':Telescope find_files hidden=true<CR>', opts)
keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<Leader>gs', ':Telescope git_status<CR>', opts)
keymap('n', '<Leader>fs', ':Telescope grep_string<CR>', opts)
keymap('n', '<Leader>fw', ':Telescope workspaces<CR>', opts)
keymap('n', '<Leader>fd', ':Telescope diagnostics<CR>', opts)
keymap('n', '<Leader>ft', ':TodoTelescope<CR>', opts)

-- Toggle term
keymap('n', '<Leader>to', ':ToggleTerm<CR>', opts)
keymap('t', '<ESC>', '<C-\\><C-n>', opts)
keymap('t', '<C-w>', '<C-\\><C-n><C-w>', opts)

keymap('n', '<Leader><CR>', '<CMD>lua MiniJump2d.start(MiniJump2d.builtin_opts.word_start)<CR>', opts)


-- Obsidian
-- keymap('n', '<Leader>of', ':ObsidianQuickSwitch<CR>', opts)

-- keymap('n', '<Leader>gR', ':Telescope lsp_references<CR>', opts)


-- lsp
-- keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
