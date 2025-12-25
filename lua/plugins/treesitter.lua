return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        branch = "main",
        version = false,
        config = function()
            -- 1. パーサーのインストール
            -- 以前の ensure_installed の代わりです。非同期でインストールされます。
            -- あなたの使用言語（Go, Rust, C++, Web系）に合わせてリストアップしています。
            require("nvim-treesitter").install({
                -- Neovim 自体の開発・設定に必須
                "lua",
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",

                -- アプリケーション開発 (Go, Rust, C++)
                "go",
                "gomod",
                "gosum",
                "rust",
                "toml",
                "c",
                "cpp",

                -- Web フロントエンド
                "javascript",
                "typescript",
                "tsx",
                "html",
                "css",
                "json",
                "yaml",

                -- その他・ツール系
                "dockerfile",
                "bash",
            })

            -- 2. ハイライトの有効化 (重要)
            -- ドキュメントにある通り、自動では有効になりません。
            -- FileType イベントで vim.treesitter.start() を呼び出します。
            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "*" }, -- すべてのファイルタイプを対象
                callback = function()
                    -- エラー回避のため pcall で呼び出すのが安全です
                    pcall(vim.treesitter.start)
                end,
            })

            -- 3. コードの折りたたみ (Folding)
            -- Neovim ネイティブの treesitter 折りたたみ機能を使用
            vim.opt.foldmethod = "expr"
            vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
            vim.opt.foldlevel = 99 -- デフォルトでは折りたたまない（必要なら調整してください）

            -- 4. インデント (Experimental)
            -- ドキュメントで「実験的」とされていますが、使いたい場合は以下を有効化してください
            -- vim.api.nvim_create_autocmd('FileType', {
            --   pattern = { '*' },
            --   callback = function()
            --     vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            --   end,
            -- })
        end,
    },
}
