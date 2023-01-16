-- Using this to add group names for whcih key
-- Actual key maps in seperate file to avoid the dependency on which key
require 'which-key'.setup()

local wk = require("which-key")

wk.register({
  b = { name = "buffer" },
  f = { name = "find" },
  o = { name = "org" },
  w = { name = "workspace" },
  ["<space>"] = { name = "extra" }
}, { prefix = "<leader>" })
