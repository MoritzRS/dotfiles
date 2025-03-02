return {
    -- git signs in editor
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

    -- git blame lines
    {
        "f-person/git-blame.nvim",
        event = "VeryLazy",
        keys = {
            { "<leader>gb", "<cmd>GitBlameToggle<cr>", desc = "Git Blame" },
        },
        opts = { enabled = false },
    },
}