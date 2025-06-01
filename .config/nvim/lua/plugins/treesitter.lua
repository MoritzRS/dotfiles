return {
    {
        "nvim-treesitter/nvim-treesitter",
        version = false,
        build = ":TSUpdate",
        lazy = false,
        main = "nvim-treesitter.configs",
        opts = {
            ensure_installed = {
                "bash",
                "css",
                "dockerfile",
                "gitignore",
                "go",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "regex",
                "rust",
                "sql",
                "svelte",
                "toml",
                "typescript",
                "vim",
                "yaml",
            },
            
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
                },
            },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        lazy = false,
        opts = {},
    },
}
