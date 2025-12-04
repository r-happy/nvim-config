vim.keymap.set("n", "<C-f>", function()
	Snacks.picker.smart()
end, { desc = "open picker" })

vim.keymap.set("n", "<leader>spg", function()
	Snacks.picker.grep()
end, { desc = "open grep" })

vim.keymap.set("n", "<leader>spl", function()
	Snacks.picker.lsp_symbols()
end, { desc = "open lsp symbols" })

vim.keymap.set("n", "<leader>se", function()
	Snacks.explorer()
end, { desc = "open grep" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "show hover" })

vim.keymap.set("n", "<leader>e", function()
	vim.cmd("Oil")
end, { desc = "open oil" })
