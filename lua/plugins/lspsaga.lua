return {
    {
        "nvimdev/lspsaga.nvim",
        event = "LspAttach",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("lspsaga").setup({
                ui = {
                    border = "rounded",
                },
                lightbulb = {
                    enable = true,
                    sign = false,
                },
                callhierarchy = {
                    layout = "float"
                },
                symbol_in_winbar = {
                    enable = true,
                }
            })
        end,
    },
}
