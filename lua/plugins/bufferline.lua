return {
    {
        "akinsho/bufferline.nvim",
        event = { "BufReadPre", "BufNewFile" },
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        opts = {
            options = {
                separator_style = "thin",
                mode = "buffers",
                diagnostics = "nvim_lsp",

                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local s = " "
                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " " or (e == "warning" and " " or " ")
                        s = s .. n .. sym
                    end
                    return s
                end,
            },
        },
        keys = {
            { "<C-b>p",     "<cmd>BufferLineCyclePrev<cr>",   desc = "Prev Buffer" },
            { "<C-b>n",     "<cmd>BufferLineCycleNext<cr>",   desc = "Next Buffer" },
            { "<leader>bp", "<cmd>BufferLinePick<cr>",        desc = "Pick Buffer" },
            { "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", desc = "Delete Other Buffers" },
        },
    },
}
