return {
	{
		"mason-org/mason.nvim",
		cmd = "Mason",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp"
		},
		config = function()
            require("mason-lspconfig").setup(opts)
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(event)
					local map = function(keys, func, desc)
						vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
					end

					map("gd", vim.lsp.buf.definition, "Go to Definition (定義へ移動)")
					map("K", vim.lsp.buf.hover, "Hover (ドキュメント表示)")
					map("gi", vim.lsp.buf.implementation, "Go to Implementation (実装へ移動)")
					map("<leader>rn", vim.lsp.buf.rename, "Rename (変数名変更)")
					map("<leader>ca", vim.lsp.buf.code_action, "Code Action (修正提案)")
					map("gr", vim.lsp.buf.references, "References (参照箇所一覧)")

					-- もし Snacks.picker を使いたいなら、gr はこっちの方がリッチです
					-- map("gr", function() Snacks.picker.lsp_references() end, "References (Snacks)")
				end,
			})
		end,
	},
}
