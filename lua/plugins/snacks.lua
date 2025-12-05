return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			dashboard = {
				enabled = true,
			},
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
					scope = {
						enabled = true, -- enable highlighting the current scope
						priority = 200,
						char = "│",
						underline = false, -- underline the start of the scope
						only_current = false, -- only show scope in the current window
						hl = "SnacksIndentScope", ---@type string|string[] hl group for scopes
					},
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
			statuscolumn = {
				enabled = true,
				left = { "mark", "sign" },
				right = { "fold", "git" },
				folds = {
					open = true,
					git_hl = true,
				},
				git = {
					-- patterns to match Git signs
					patterns = { "GitSign", "MiniDiffSign" },
				},
			},
			words = { enabled = true },
			git = {
				width = 0.6,
				height = 0.6,
				border = true,
				title = " Git Blame ",
				title_pos = "center",
				ft = "git",
			},
			toggle = {
				enabled = true,
				map = vim.keymap.set, -- keymap.set function to use
				which_key = true, -- integrate with which-key to show enabled/disabled icons and colors
				notify = true, -- show a notification when toggling
				-- icons for enabled/disabled states
				icon = {
					enabled = " ",
					disabled = " ",
				},
				-- colors for enabled/disabled states
				color = {
					enabled = "green",
					disabled = "yellow",
				},
				wk_desc = {
					enabled = "Disable ",
					disabled = "Enable ",
				},
			},
			terminal = {
				enabled = true,
				win = {
					position = "float",
					border = true,
				},
			},
		},
		keys = {
			{
				"<leader>gb",
				function()
					require("snacks").git.blame_line()
				end,
				desc = "Git Blame Line",
			},
		},
	},
}
