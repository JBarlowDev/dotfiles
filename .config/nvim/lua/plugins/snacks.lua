return {
  "folke/snacks.nvim",
  priority = 1000,
  opts = {
    dashboard = {
      preset = {
        keys = {
          { icon = "", key = "f", desc = "Find File", action = "<leader>ff" },
          { icon = "", key = "w", desc = "Find Workspace", action = "<leader>fw" },
          { icon = "", key = "l", desc = "Open Lazy", action = ":Lazy" },
          { icon = "", key = "m", desc = "Open Mason", action = ":Mason" },
          { icon = "", key = "q", desc = "Quit", action = ":q" },
        },
      },
      sections = {
        { section = "header" },
        { section = "keys" },
        { section = "startup" }
      }
    }
  }
}
