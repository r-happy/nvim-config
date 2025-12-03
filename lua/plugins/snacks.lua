return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			dashboard = { enabled = true },
			explorer = { enabled = true },
			indent = {
				enabled = true,
				animate = {
					enabled = false,
				},
				chunk = {
					-- when enabled, scopes will be rendered as chunks, except for the
					-- top-level scope which will be rendered as a scope.
					enabled = true,
					-- only show chunk scopes in the current window
					only_current = false,
					priority = 200,
					hl = "SnacksIndentChunk", ---@type string|string[] hl group for chunk scopes
					char = {
						-- corner_top = "┌",
						-- corner_bottom = "└",
						corner_top = "╭",
						corner_bottom = "╰",
						horizontal = "─",
						vertical = "│",
						arrow = ">",
					},
				},
			},
			input = {
				enabled = true,
			},
			picker = {
				enabled = true,
				matcher = {
					ignorecase = true,
					fuzzy = true,
					smartcase = true,
				},
			},
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = false },
			statuscolumn = { enabled = true },
			words = { enabled = true },
		},
	},
}
