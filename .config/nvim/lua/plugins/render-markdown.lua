return {
    "MeanderingProgrammer/render-markdown.nvim",
    version = "^8.4.0",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        render_modes = true,

        checkbox = {
            position = "inline",
            checked = { icon = ' 󰱒 ', scope_highlight = '@markup.strikethrough' },
            unchecked = { icon = '  ' },
            custom = {
                canceled = { raw = "[-]", rendered = " 󰅘 ", highlight = "DiagnosticError", scope_highlight = '@markup.strikethrough' },
                important = { raw = "[!]", rendered = " 󰳤 ", highlight = "DiagnosticWarn" },
            }
        },

        code = {
            style = "normal",
            width = "block",
            min_width = 45,
            left_pad = 2,
            right_pad = 2,
            border = "thick",
        },

        dash = {
            left_margin = 2,
        },

        heading = {
            border = true,
            border_virtual = true,
            icons = {},
            left_pad = 1,
        },
    },
}

