vim.pack.add({ 'https://github.com/ibhagwan/fzf-lua' })


require('fzf-lua').setup({
    winopts = {
        width = 1,
        row = 1,
    },
    file_ignore_patterns = { '.next' }
    -- fzfLua.register_ui_select()
    -- fzfLua.register_ui_select(function(_, items)
    --   local min_h, max_h = 0.15, 0.70
    --   local h = (#items + 4) / vim.o.lines
    --   if h < min_h then
    --     h = min_h
    --   elseif h > max_h then
    --     h = max_h
    --   end
    --   return { winopts = { height = h, width = 0.60, row = 0.40 } }
    -- end)
})

local keymap = vim.keymap.set
keymap('n', '<Leader>ff', function() require('fzf-lua').files({ follow = true }) end, { desc = 'Fzf find files' })
keymap('n', '<Leader>fg', function() require('fzf-lua').live_grep() end, { desc = 'Fzf live grep' })
keymap('v', '<Leader>fg', function() require('fzf-lua').grep_visual() end,
    { desc = 'Fzf grep visual' })
keymap('n', '<Leader>fs', function() require('fzf-lua').grep_cword() end, { desc = 'Fzf live grep' })
keymap('n', '<Leader>fd', function() require('fzf-lua').lsp_workspace_diagnostics() end,
    { desc = 'Fzf lsp workspace diagnostics' })
keymap('n', '<Leader>ft', ':TodoFzfLua<CR>', { desc = 'Fzf todo finder' })
-- Snacks picker faster here?
keymap('n', '<Leader>e', function() require('fzf-lua').buffers() end, { desc = 'Fzf buffers' })
keymap('n', '<Leader>fc', function() require('fzf-lua').commands() end, { desc = 'Fzf commands' })
keymap('n', '<Leader>fh', function() require('fzf-lua').helptags() end, { desc = 'Fzf helptags' })
keymap('n', '<Leader>fx', function() require('fzf-lua').builtin() end, { desc = 'Fzf builtins (all the others)' })
keymap('n', '<Leader>gr', function() require('fzf-lua').lsp_references({ ignore_current_line = true }) end,
    { desc = 'Fzf lsp references' })
keymap('n', '<Leader>gs', function() require('fzf-lua').git_status() end, { desc = 'Fzf git status' })
