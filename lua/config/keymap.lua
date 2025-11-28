vim.keymap.set("n", "<C-f>", function()
	Snacks.picker.smart()
end, { desc = "open picker" })

vim.keymap.set("n", "<leader>e", function()
	vim.cmd("Oil")
end, { desc = "open oil" })
