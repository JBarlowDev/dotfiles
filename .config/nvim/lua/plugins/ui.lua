return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      highlight = {
        pattern = [[.*<(KEYWORDS)\s*]],
        keyword = "bg"
      }
    }
  },
  { "akinsho/bufferline.nvim", enabled = false, dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {} },
}
