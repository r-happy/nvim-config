-- snacks keymaps
-- begin from "s"
vim.keymap.set("n", "sf", function()
	Snacks.picker.smart()
end, { desc = "open picker" })

vim.keymap.set("n", "spg", function()
	Snacks.picker.grep()
end, { desc = "open grep" })

vim.keymap.set("n", "spl", function()
	Snacks.picker.lsp_symbols()
end, { desc = "open lsp symbols" })

vim.keymap.set("n", "spr", function()
	Snacks.picker.recent()
end, { desc = "picker recent files" })

vim.keymap.set("n", "se", function()
	Snacks.explorer()
end, { desc = "open explorer" })

vim.keymap.set("n", "sg", function()
	Snacks.lazygit()
end, { desc = "open lazygit" })

vim.keymap.set("n", "sb", function()
	Snacks.picker.buffers()
end, { desc = "search buffer" })

vim.keymap.set("n", "sl", function()
	Snacks.picker.lines()
end, { desc = "search buffer lines" })

vim.keymap.set({ "n", "t" }, "st", function()
	Snacks.terminal()
end, { desc = "Toggle Terminal" })

-- lsp
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "show hover" })
vim.keymap.set("n", "gr", function()
	Snacks.picker.lsp_references()
end, { desc = "goto references" })

-- oil
vim.keymap.set("n", "<leader>e", function()
	vim.cmd("Oil")
end, { desc = "open oil" })

-- cursor
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("n", "<C-n>", "*")
