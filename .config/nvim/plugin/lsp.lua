vim.pack.add({
  'https://github.com/williamboman/mason.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/nvim-treesitter/nvim-treesitter',
})

require('mason').setup()

-- Start treesitter on buffer open
-- Am I overthinking this, any good reason not to try on every buffer open?

-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = { '*' },
--   callback = function()
--     local filetype = vim.bo.filetype
--     if filetype and filetype ~= '' then
--       local success = pcall(function()
--         vim.treesitter.start()
--       end)
--       if not success then
--         return
--       end
--     end
--   end,
-- })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'python' },
  callback = function() vim.treesitter.start() end,
})
