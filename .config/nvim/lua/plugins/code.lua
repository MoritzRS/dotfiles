return {
    -- auto-pairs
    {
        "echasnovski/mini.pairs",
        opts = {},
    },


    -- highlight TODO, FIXME, etc. in comments
    {
        "folke/todo-comments.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        },
        event = { "BufEnter" },
        cmd = { "TodoTelescope" },
        keys = {
            { "<leader>ltd", "<cmd>TodoTelescope<cr>", desc = "List ToDos" },
        },
        opts = {},
    },

    -- formatting
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        keys = {
            {
                "<leader>fmt",
                function()
                    require("conform").format({ async = true })
                end,
                desc = "Format current buffer",
            },
        },
        opts = {
            format_on_save = {
                timeout = 500,
                lsp_format = "fallback",
            },
            formatters_by_ft = {
                javascript = { "prettier" },
                lua = { "stylua" },
                markdown = { "prettier" },
                svelte = { "prettier" },
                typescript = { "prettier" },
            },
        }
    }
}