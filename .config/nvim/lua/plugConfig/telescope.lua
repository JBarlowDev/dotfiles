local telescope = require("telescope")

telescope.setup {
	mappings = {
		n = {
			['<c-d>'] = require('telescope.actions').delete_buffer
		},
		i = {
--			["C-h"] = "which_key",
			['<c-d>'] = require('telescope.actions').delete_buffer
		}
	}
}

telescope.load_extension('workspaces')
telescope.load_extension('ui-select')
