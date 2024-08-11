return {
  {
    "epwalsh/obsidian.nvim",
    lazy = true,
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Documents/Personal",
        }
      },
      note_id_func = function(title)
        return title
      end,
    },
  },
}
