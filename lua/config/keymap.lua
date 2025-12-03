vim.keymap.set("n", "<C-f>", function()
	Snacks.picker.smart()
end, { desc = "open picker" })

vim.keymap.set("n", "<C-g>", function()
	Snacks.picker.grep()
end, { desc = "open grep" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "show hover" })

vim.keymap.set("n", "<leader>e", function()
	vim.cmd("Oil")
end, { desc = "open oil" })
