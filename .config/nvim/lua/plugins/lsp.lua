return {
    "neovim/nvim-lspconfig",
    dependencies = {
        { "williamboman/mason.nvim", build = ":MasonUpdate" },
        { "williamboman/mason-lspconfig" },
    },
    events = { "LazyFile" },
    config = function()
        local servers = {
            cssls = {},
            html = {},
            intelephense = {},
            jsonls = {},
            lua_ls = {
                filetypes = { "lua" },
                settings = { Lua = { runtime = { version = "LuaJIT" } } },
            },
            markdown_oxide = {},
            rust_analyzer = {},
            sqlls = {},
            svelte = {},
            tailwindcss = {},
            ts_ls = {},
            yamlls = {},
        }
        
        local server_names = vim.tbl_keys(servers or {})
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local lspconfig = require("lspconfig")

        mason.setup()
        mason_lspconfig.setup({
            ensure_installed = server_names,
            automatic_installation = true,
        })
        mason_lspconfig.setup_handlers({
            function(server_name)
                lspconfig[server_name].setup(servers[server_name] or {})
            end,
        })
    end,
}
