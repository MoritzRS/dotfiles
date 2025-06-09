return {
    {
        "mason-org/mason.nvim",
        version = "^2.0.0",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        version = "^2.0.0",
        lazy = false,
        opts = {
            auto_install = true,
            ensure_installed = {
                "cssls",
                "html",
                "intelephense",
                "jsonls",
                "lua_ls",
                "markdown_oxide",
                "rust_analyzer",
                "sqlls",
                "svelte",
                "tailwindcss",
                "ts_ls",
                "vue_ls",
                "yamlls",
            }
        },
    },
    {
        "neovim/nvim-lspconfig",
        version = "^2.2.0",
        lazy = false,
        config = function()
            vim.lsp.config("lua_ls", {
                filetypes = { "lua" },
                settings = {
                    Lua = {
                        runtime = {
                            version = "LuaJIT",
                        },
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })

            vim.lsp.config("ts_ls", {
                filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
                init_options = {
                    plugins = {
                        {
                            name = "@vue/typescript-plugin",
                            location = vim.fn.expand "$MASON/packages/vue-language-server/node_modules/@vue/language-server",
                            languages = { "vue" },
                        },
                    },
                },
            })
        end,
    }
}
