local M = {}

local workspaces = require("workspaces")
local fzfLua = require("fzf-lua")

function M.workspace_switch()
  local opts = {}
  opts.actions = {
    ['default'] = function(selected)
      -- vim.notify(selected)
      workspaces.open(selected[1])
    end
  }
  fzfLua.fzf_exec(function(fzf_cb)
    local workspace_list = workspaces.get()

    for _, workspace in ipairs(workspace_list) do
      fzf_cb(workspace.name)
    end
  end, opts)
end

return M

