return {
    "folke/tokyonight.nvim",
    version = "^4.11.0",
    lazy = false,
    config = function()
        require("tokyonight").setup({
            on_highlights = function(highlight, colors)
                highlight.CursorLine = { bg = colors.bg_highlight }
                highlight.CursorLineNr = { fg = colors.orange }
            end,
        })

        vim.cmd("colorscheme tokyonight")
    end,
}
