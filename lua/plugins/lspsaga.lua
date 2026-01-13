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
                symbol_in_winbar = {
                    enable = false,
                },
                lightbulb = {
                    enable = true,
                    sign = false,
                },
                callhierarchy = {
                    layout = "float"
                }
            })
        end,
    },
}
