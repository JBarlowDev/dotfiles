local M = {}

function M.reload_config()
  vim.notify("Goooo")
  -- for name, _ in pairs(package.loaded) do
  --   -- package.loaded[name] = nil
  --   if vim.startswith(name, 'workspaces') then
  --     vim.print(name)
  --   end
  -- end

  package.loaded['workspacesFzf'] = nil
  dofile(vim.env.MYVIMRC)
end

M.reload_config()

function M.reload_fzf()
  require('lazy.core.loader').reload('fzf-lua')
  vim.notify("Reloding Fzf")
end

-- M.reload_fzf()

return M
