return {
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
            css = { "prettier" },
            html = { "prettier" },
            javascript = { "prettier" },
            json = { "prettier" },
            lua = { "stylua" },
            markdown = { "prettier" },
            rust = { "rustfmt" },
            svelte = { "prettier" },
            typescript = { "prettier" },
            vue = { "prettier" },
            yaml = { "prettier" },
        },
    }
}
