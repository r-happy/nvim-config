return {
    {
        "rebelot/kanagawa.nvim",
        opts = {
            compile = true,
            dimInactive = true,
            globalStatus = true,
        },
        config = function()
            vim.cmd("colorscheme kanagawa-dragon")
        end,
    },
}
