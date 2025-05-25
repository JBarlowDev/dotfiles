-- local opts = { noremap = true, silent = true }
local capabilities = require("blink.cmp").get_lsp_capabilities()
vim.lsp.config('*', {
  capabilities = capabilities,
  on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gS', '<cmd>lua vim.lsp.buf.declaration()<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gs', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space><space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', {})
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space><space>a', '<cmd>FzfLua lsp_code_actions<CR>', {})
    --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {})
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>gr', '<cmd>FzfLua lsp_references<CR>', {})
    -- Using conform for formatting over lsp
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space><space>f', '<cmd>lua vim.lsp.buf.format()<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>cd', '<cmd>lua vim.diagnostic.open_float()<CR>', {})
  end
})


-- Can extend on attach for specific lsp's like below
-- vim.lsp.config('vtsls', {
--   on_attach = function(client, bufnr)
--     vim.lsp.config['*'].on_attach(client, bufnr)
--     ....
--   end
-- })

vim.lsp.enable('vtsls')
vim.lsp.enable('lua_ls')
