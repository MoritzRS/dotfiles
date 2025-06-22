return {
    "lewis6991/gitsigns.nvim",
    version = "^1.0.2",
    event = "VeryLazy",
    keys = {
        { "<leader>gb", "<cmd>Gitsigns blame_line<cr>", desc = "[G]it [B]lame Line" },
        { "<leader>gB", "<cmd>Gitsigns blame<cr>",      desc = "[G]it [B]lame" },
    },
    opts = {
        signs = {
            add          = { text = '┃' },
            change       = { text = '┃' },
            delete       = { text = "" },
            topdelete    = { text = "" },
            changedelete = { text = '┃' },
            untracked    = { text = '┆' },
        },
        signs_staged = {
            add          = { text = '┃' },
            change       = { text = '┃' },
            delete       = { text = "" },
            topdelete    = { text = "" },
            changedelete = { text = '┃' },
            untracked    = { text = '┆' },
        },
    },
}
