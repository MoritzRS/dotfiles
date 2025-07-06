return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            component_separators = { left = '|', right = '' },
            section_separators = { left = '', right = '' },
        },
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff", "diagnostics" },
            lualine_c = { { "filename", path = 1 } },

            lualine_x = { "progress" },
            lualine_y = {
                { "filetype",   icon_only = true, },
                { "lsp_status", ignore_lsp = { "copilot" }, icon = false, padding = { left = 0, right = 1 } },
            },
            lualine_z = { { "location" } }
        },
    },
}
