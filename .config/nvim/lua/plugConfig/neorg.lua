require('neorg').setup {
    load = {
        ["core.defaults"] = {},
				["core.gtd.base"] = {
				    config = {
				        workspace = "work"
						}
				},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    work = "~/notes/work",
                }
            }
        },
				["core.norg.concealer"] = {
				    config = {}
				},
				["core.keybinds"] = {
            config = {
                default_keybinds = false,
            }
        }
    }
}
