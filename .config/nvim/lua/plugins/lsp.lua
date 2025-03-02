return {
    -- lsp manager
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup()
        end,
    },

    -- lsp servers
    {
        "willamboman/mason-lspconfig",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "markdown_oxide", "ts_ls" },
                automatic_installation = true,
            })
        end,
    },

    -- lsp config
    {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason-lspconfig" },
        events = { "LazyFile" },
        keys = {
            { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to Definition" },
            { "rn", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
            { "H", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover" },
            { "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
        },
        config = function()
            local lspconfig = require("lspconfig")
            local mason_lspconfig = require("mason-lspconfig")

            mason_lspconfig.setup_handlers({
                function(server_name)
                    lspconfig[server_name].setup({})
                end,
            })
        end,
    },

    -- diagnostics
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        opts = {},
    },
}
