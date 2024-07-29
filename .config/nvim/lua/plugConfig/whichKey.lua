-- Using this to add group names for whcih key
-- Actual key maps in seperate file to avoid the dependency on which key
require 'which-key'.setup()

local wk = require("which-key")

wk.add({
  { "<leader><space>", group = "extra" },
  { "<leader>b",       group = "buffer" },
  { "<leader>f",       group = "find" },
  { "<leader>o",       group = "org" },
  { "<leader>w",       group = "workspace" },
})
