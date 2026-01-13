-- =============================================================================
-- Snacks.nvim Keymaps
-- =============================================================================
vim.keymap.set("n", "sf", function() Snacks.picker.smart() end, { desc = "Snacks: Smart Find Files" })
vim.keymap.set("n", "spg", function() Snacks.picker.grep() end, { desc = "Snacks: Grep" })
vim.keymap.set("n", "spl", function() Snacks.picker.lsp_symbols() end, { desc = "Snacks: LSP Symbols" })
vim.keymap.set("n", "spr", function() Snacks.picker.recent() end, { desc = "Snacks: Recent Files" })
vim.keymap.set("n", "sb", function() Snacks.picker.buffers() end, { desc = "Snacks: Buffers" })
vim.keymap.set("n", "sl", function() Snacks.picker.lines() end, { desc = "Snacks: Buffer Lines" })
vim.keymap.set("n", "se", function() Snacks.explorer() end, { desc = "Snacks: Explorer" })
vim.keymap.set("n", "sg", function() Snacks.lazygit() end, { desc = "Snacks: LazyGit" })
vim.keymap.set({ "n", "t" }, "<C-\\>", function() Snacks.terminal() end, { desc = "Snacks: Toggle Terminal" })

-- =============================================================================
-- LSP / Lspsaga Keymaps (Advanced UI)
-- =============================================================================

-- Hover Doc: K (ドキュメント表示)
-- 枠線付きのリッチなドキュメントを表示します。2回押すとドキュメント内に入れます。
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover Doc (Lspsaga)" })

-- LSP Finder: gh (定義・参照の一覧表示)
-- 定義元と参照先をリッチなUIで一覧表示し、プレビューしながらジャンプできます。
vim.keymap.set("n", "gh", "<cmd>Lspsaga finder<CR>", { desc = "LSP Finder (Lspsaga)" })

-- Code Action: <leader>ca (修正案の表示)
-- 電球アイコンが出ている行などで実行すると、修正アクションを選択できます。
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "Code Action (Lspsaga)" })

-- Rename: <leader>rn (変数名などの変更)
-- ポップアップウィンドウでスマートにリネームできます。
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { desc = "Smart Rename (Lspsaga)" })

-- Peek Definition: gd (定義のぞき見)
-- 画面遷移せずに、フローティングウィンドウで定義元の中身を確認・編集できます。
-- (通常のジャンプがいい場合は `peek_definition` を `goto_definition` に変えてください)
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek Definition (Lspsaga)" })

-- Diagnostics: [d, ]d (エラー箇所へジャンプ)
-- 次/前のエラーへジャンプします。
vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Prev Diagnostic" })
vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next Diagnostic" })

-- (Option) Snacksの参照ジャンプも残しておく場合
vim.keymap.set("n", "gr", function() Snacks.picker.lsp_references() end, { desc = "Goto References (Snacks)" })

-- Sidebar with outline
vim.keymap.set("n", "so", "<cmd>Lspsaga outline<CR>", { desc = "Show Outline" })

-- =============================================================================
-- Other Plugins
-- =============================================================================

-- Oil (File Manager)
vim.keymap.set("n", "<leader>e", function() vim.cmd("Oil") end, { desc = "Open Oil" })

-- =============================================================================
-- Editor / Cursor Movement
-- =============================================================================
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("n", "<C-n>", "*") -- 検索ワードの強調
