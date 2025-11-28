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
