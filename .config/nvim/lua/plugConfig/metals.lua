-- Scala LSP 

local config = require("metals").bare_config()

config.capabilities = require("cmp_nvim_lsp").default_capabilities()

local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "scala", "sbt" }, -- add java maybe
  callback = function ()
    require("metals").initialize_or_attach(config)
  end,
  group = nvim_metals_group,
})
