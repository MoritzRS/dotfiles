return {
    {
        "nvim-treesitter/nvim-treesitter",
        version = false,
        build = ":TSUpdate",
        lazy = false,
        main = "nvim-treesitter.configs",
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
            auto_install = true,

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<cr>",
                    node_incremental = "<tab>",
                    scope_incremental = "<cr>",
                    node_decremental = "<s-tab>",
                }
            }
        },
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        lazy = false,
        opts = {},
    },
}

