-- Show lsp load progress
vim.api.nvim_create_autocmd("LspProgress", {
  callback = function(ev)
    local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
    vim.notify(vim.lsp.status(), "info", {
      id = "lsp_progress",
      title = "LSP Progress",
      opts = function(notif)
        notif.icon = ev.data.params.value.kind == "end" and " "
            or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
      end,
    })
  end,
})

return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    opts = {
      dashboard = {
        preset = {
          keys = {
            { icon = "", key = "f", desc = "Find File",      action = "<leader>ff" },
            { icon = "", key = "w", desc = "Find Workspace", action = "<leader>fw" },
            { icon = "", key = "l", desc = "Open Lazy",      action = ":Lazy" },
            { icon = "", key = "m", desc = "Open Mason",     action = ":Mason" },
            { icon = "", key = "q", desc = "Quit",           action = ":q" },
          },
        },
        sections = {
          { section = "header" },
          { section = "keys" },
          { section = "startup" }
        }
      },
      notifier = {},
      notify = {},
    },
    -- TODO: Why doens't this work?
    -- keys = {
    --   { "<Leader>un", function() require('snacks').notifier.show_history() end, desc = 'Show notification history' },
    -- }
  }
}
