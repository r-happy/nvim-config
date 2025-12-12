return {
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"zapling/mason-conform.nvim",
		},
		opts = {},
		config = function()
			require("mason-conform").setup({
				ignore_install = {},
			})

			require("conform").setup({
				format_on_save = {
					lsp_fallback = true,
					async = false,
					timeout_ms = 1000,
				},
				formatters = {
					prettier = {
						args = {
							"--semi",
							"true",
							"--arrow-parens",
							"always",
						},
					},
				},
				formatters_by_ft = {
					javascript = { "prettier" },
					typescript = { "prettier" },
					javascriptreact = { "prettier" },
					typescriptreact = { "prettier" },
					json = { "prettier" },
					css = { "prettier" },
					html = { "prettier" },
					markdown = { "prettier" },
					yaml = { "prettier" },
				},
			})
		end,
	},
}
