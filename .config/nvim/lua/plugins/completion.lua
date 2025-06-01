return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        opts = {},
        keys = {
            -- Suggestions must be toggled explicitly
            { "<leader>cp", "<cmd>Copilot suggestion toggle_auto_trigger<cr>", desc = "[C]o[p]ilot" },
        }
    },

    {
        "saghen/blink.cmp",
        version = "1.*",
        opts = {
            fuzzy = { implementation = "lua" },
            keymap = {
                preset = "none",
                ["<C-Space>"] = { "hide", "fallback" },
                ["<Escape>"] = { "hide", "fallback" },
                ["<Up>"] = { "select_prev", "fallback" },
                ["<Down>"] = { "select_next", "fallback" },
                ["<Enter>"] = { "accept", "fallback" },
                ["<Tab>"] = {
                    function(cmp)
                        if cmp.snippet_active() then
                            return cmp.accept()
                        else
                            return cmp.select_and_accept()
                        end
                    end,
                    "snippet_forward",
                    "fallback"
                },
                ["<S-Tab>"] = { "snippet_backward", "fallback" },
                ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
                ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
            },
            completion = {
                list = { selection = { auto_insert = false } },
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 500,
                },
                menu = {
                    draw = {
                        padding = 1,
                        gap = 1,
                        columns = {
                            { "kind_icon" },
                            { "label",    "label_description", gap = 1 },
                        },
                    }
                }
            },
        },
    },
}
