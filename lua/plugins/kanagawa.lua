return {
	"rebelot/kanagawa.nvim",
	opts = {
		compile = true,
		dimInactive = true,
		globalStatus = true,
		transparent = true,
		theme = "dragon",
		overrides = function(colors)
			return {
				BlinkCmpMenu = { link = "Pmenu" },
				BlinkCmpMenuBorder = { link = "FloatBorder" },
				BlinkCmpMenuSelection = { link = "PmenuSel" },
				BlinkCmpDoc = { link = "NormalFloat" },
				BlinkCmpDocBorder = { link = "FloatBorder" },
				BlinkCmpKind = { link = "Special" },
			}
		end,
	},
	config = function(_, opts)
		require("kanagawa").setup(opts)
		vim.cmd("colorscheme kanagawa-dragon")
	end,
}
