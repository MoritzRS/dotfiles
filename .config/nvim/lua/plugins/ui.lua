return {
    -- color theme
    {
        "folke/tokyonight.nvim",
        -- config = function()
        --     vim.cmd("colorscheme tokyonight")
        -- end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            vim.cmd("colorscheme catppuccin")
        end,
    },

    -- icons
    { "nvim-tree/nvim-web-devicons" },
    { "echasnovski/mini.icons" },

    -- bottom status line
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            options = {
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
            },
        },
    },

    -- show keys
    {
        "folke/which-key.nvim",
        opts = {},
    },
}
