return {
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {
            default_file_explorer = true,
            win_options = {
                signcolumn = "yes:2"
            },
            view_options = {
                show_hidden = true
            }
        },
        dependencies = { { "nvim-mini/mini.icons", opts = {} } },
        lazy = false,
    },
    {
        "refractalize/oil-git-status.nvim",
        dependencies = {
            "stevearc/oil.nvim",
        },
        config = true,
    },
}
