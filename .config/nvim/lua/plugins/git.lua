return {
    -- Git Signs
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { text = "▎" },
                change = { text = "▎" },
                delete = { text = "" },
                topdelete = { text = "" },
                changedelete = { text = "▎" },
                untracked = { text = "▎" },
            },
            signs_staged = {
                add = { text = "▎" },
                change = { text = "▎" },
                delete = { text = "" },
                topdelete = { text = "" },
                changedelete = { text = "▎" },
            },
        },
    },

    -- Git Blame
    {
        "f-person/git-blame.nvim",
        event = "VeryLazy",
        keys = { { "<leader>gB", "<cmd>GitBlameToggle<cr>", desc = "[G]it [B]lame" } },
        opts = { enabled = false },
    },
}

