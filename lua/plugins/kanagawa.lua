return {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        compile = true,
        dimInactive = true,
        globalStatus = true,
        theme = "dragon",
        transparent = true,

        overrides = function(colors)
            local theme = colors.theme
            local makeDiagnosticColor = function(color)
                local c = require("kanagawa.lib.color")
                return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
            end

            return {
                NoiceCmdlinePopup = { bg = theme.ui.bg_p1 },
                NoiceCmdlinePopupBorder = { fg = theme.ui.border, bg = theme.ui.bg_p1 },
                NoiceCmdlinePopupTitle = { fg = theme.ui.special, bg = theme.ui.bg_p1 },
                NoiceCmdlineIcon = { link = "KanagawaKeyword" },

                BlinkCmpMenu = { fg = theme.ui.fg, bg = theme.ui.bg_p1 },
                BlinkCmpMenuBorder = { fg = theme.ui.border, bg = theme.ui.bg_p1 },
                BlinkCmpMenuSelection = { fg = "NONE", bg = theme.ui.bg_p2, bold = true },

                BlinkCmpDoc = { fg = theme.ui.fg, bg = theme.ui.bg_m1 },
                BlinkCmpDocBorder = { fg = theme.ui.border, bg = theme.ui.bg_m1 },

                BlinkCmpGhostText = { fg = theme.ui.nontext },

                BlinkCmpKindClass = { link = "CmpItemKindClass" },
                BlinkCmpKindConstructor = { link = "CmpItemKindConstructor" },
                BlinkCmpKindField = { link = "CmpItemKindField" },
                BlinkCmpKindFile = { link = "CmpItemKindFile" },
                BlinkCmpKindFolder = { link = "CmpItemKindFolder" },
                BlinkCmpKindFunction = { link = "CmpItemKindFunction" },
                BlinkCmpKindInterface = { link = "CmpItemKindInterface" },
                BlinkCmpKindKeyword = { link = "CmpItemKindKeyword" },
                BlinkCmpKindMethod = { link = "CmpItemKindMethod" },
                BlinkCmpKindModule = { link = "CmpItemKindModule" },
                BlinkCmpKindOperator = { link = "CmpItemKindOperator" },
                BlinkCmpKindProperty = { link = "CmpItemKindProperty" },
                BlinkCmpKindReference = { link = "CmpItemKindReference" },
                BlinkCmpKindSnippet = { link = "CmpItemKindSnippet" },
                BlinkCmpKindStruct = { link = "CmpItemKindStruct" },
                BlinkCmpKindText = { link = "CmpItemKindText" },
                BlinkCmpKindTypeParameter = { link = "CmpItemKindTypeParameter" },
                BlinkCmpKindUnit = { link = "CmpItemKindUnit" },
                BlinkCmpKindValue = { link = "CmpItemKindValue" },
                BlinkCmpKindVariable = { link = "CmpItemKindVariable" },
            }
        end,
    },
    config = function(_, opts)
        require("kanagawa").setup(opts)
        vim.cmd("colorscheme kanagawa-dragon")
    end,
}
