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
                hover = {
                    max_width = 0.8,
                    open_link = "gx",
                    open_browser = "!chrome",
                },
                symbol_in_winbar = {
                    enable = true,
                    separator = "  ",
                },
                lightbulb = {
                    enable = true,
                    sign = false,
                },
                definition = {
                    edit = "<C-c>o",
                    vsplit = "<C-c>v",
                    split = "<C-c>i",
                    tabe = "<C-c>t",
                    quit = "q",
                },
                callhierarchy = {
                    layout = "float"
                }
            })
        end,
    },
}
