require('obsidian').setup({
  workspaces = {
    {
      name = "personal",
      path = "~/Documents/Personal",
    }
  },
  note_id_func = function(title)
    return title
  end,
})
