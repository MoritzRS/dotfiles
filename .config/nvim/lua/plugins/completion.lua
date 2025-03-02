return {
   {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-calc",
            "onsails/lspkind.nvim",
        },
        event = { "InsertEnter" },
        config = function()            
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                formatting = {
                    fields = { "kind", "abbr", "menu" },
                    format = require("lspkind").cmp_format({})
                },
                sources = {
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "path" },
                    { name = "nvim_lua" },
                    { name = "calc" },
                },
                mapping = {
                    ["<tab>"] = cmp.mapping.select_next_item(),
                    ["<s-tab>"] = cmp.mapping.select_prev_item(),
                    ["<c-space>"] = cmp.mapping.complete(),
                    ["<escape>"] = cmp.mapping.abort(),
                    ["<cr>"] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Insert,
                        select = true,
                    }),
                },
            })
        end,
    },

    -- copilot integration
    {
        "github/copilot.vim",
        event = { "InsertEnter" },
        cmd = { "Copilot" },
    },
}