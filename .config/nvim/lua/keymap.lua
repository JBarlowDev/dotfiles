local opts = {}
local keymap = vim.keymap.set

-- All these are assuming I'm on a configurable keyboard.
-- Arrow keys for example are even more convenient than hjkl here


-- Helpers
keymap('n', '<Leader>s', ':w<CR>', { desc = "Save" })
keymap('v', '<Leader>d', '"_d', {desc = "Delete no buffer"})
keymap('v', '<Leader>p', '"_dP', opts)
keymap({ 'n', 'i', 's' }, '<esc>', function()
  vim.cmd("noh")
  return "<esc>"
end, { expr = true, desc = 'Better ESC' })

-- Better up / down
--keymap({"n", "x"}, "<Up>", "v:count == 0 ? 'gk' : '<Up>'", {desc = "Better Up", expr = true, silent = true})
--keymap({"n", "x"}, "<Down>", "v:count == 0 ? 'gj' : '<Down>'", {desc = "Better Down", expr = true, silent = true})

-- Better(?) window movement (too many conflicting maps with os)
keymap('n', "<M-C-Up>", "<C-w>k", { desc = "Upper window" })
keymap('n', "<C-k>", "<C-w>k", { desc = "Upper window" })
keymap('n', "<M-C-Down>", "<C-w>j", { desc = "Lower window" })
keymap('n', "<C-j>", "<C-w>j", { desc = "Lower window" })
keymap('n', "<M-C-Left>", "<C-w>h", { desc = "Left window" })
keymap('n', "<C-h>", "<C-w>h", { desc = "Left window" })
keymap('n', "<M-C-Right>", "<C-w>l", { desc = "Right window" })
keymap('n', "<C-l>", "<C-w>l", { desc = "Right window" })

-- UI
keymap('n', '<Leader>ut', '', { desc = "Toggle" })
keymap('n', '<Leader>utt', ':NvimTreeToggle<CR>', opts)
keymap('n', '<Leader>uct', ':NvimTreeFindFile<CR>', opts)

keymap('n', '<Leader>fw', function() require("workspacesFzf").workspace_switch() end, opts)


-- Extra undo points
keymap('i', ',', ',<C-g>u')
keymap('i', '.', '.<C-g>u')

-- Indent improvements
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Lua stuff
keymap('n', '<leader><leader>x', '<CMD>source %<CR>', { desc = "Source it" })

-- Buffers
keymap('n', '<Leader>b', '', { desc = "Buffers" })
keymap('n', '<Leader>bn', ':bn<CR>', opts)
keymap('n', '<Leader>bp', ':bp<CR>', opts)
keymap('n', '<Leader>bl', ':bl<CR>', opts)
keymap('n', '<Leader>bd', ':bd<CR>', opts)
keymap('n', '<Leader>bk', ':%bd<CR>', opts)

-- Windows
keymap('', '<Leader>w', '', { desc = "Window" })
keymap('n', '<Leader>ww', '<C-w>w', { desc = "Next Window" })
keymap('n', '<Leader>wv', ':vsplit<CR>', { desc = "Vertical Split" })
keymap('n', '<Leader>ws', ':split<CR>', { desc = "Horizontal Split" })
keymap('n', '<Leader>wx', '<C-w>x', { desc = "Swap Split" })

-- Toggle term
keymap('n', '<Leader>to', ':ToggleTerm<CR>', opts)
keymap('t', '<ESC>', '<C-\\><C-n>', opts)
keymap('t', '<C-w>', '<C-\\><C-n><C-w>', opts)

keymap({ "n", "v" }, '<CR>', '<CMD>lua MiniJump2d.start(MiniJump2d.builtin_opts.word_start)<CR>', opts)
keymap({ "n", "v" }, '<Leader><CR>', '<CMD>lua MiniJump2d.start(MiniJump2d.builtin_opts.single_character)<CR>', opts)


-- Quickfix
keymap('n', '<Leader>qo', ':copen<CR>', opts)
keymap('n', '<Leader>qn', ':cnext<CR>', opts)
keymap('n', '<Leader>qp', ':cprev<CR>', opts)
keymap('n', '<Leader>qc', ':cclose<CR>', opts)

-- Obsidian
-- keymap('n', '<Leader>of', ':ObsidianQuickSwitch<CR>', opts)

-- keymap('n', '<Leader>gR', ':Telescope lsp_references<CR>', opts)


-- lsp
-- keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
