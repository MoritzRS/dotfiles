return {
    { "nvim-tree/nvim-web-devicons" },
    { "folke/which-key.nvim",       opts = { preset = "modern" } },
    { "windwp/nvim-ts-autotag",     opts = {} },

    { "echasnovski/mini.icons",     opts = {} },
    { "echasnovski/mini.ai",        opts = {} },
    { "echasnovski/mini.pairs",     opts = {} },
    { "echasnovski/mini.surround",  opts = {} },

    {
        "catgoose/nvim-colorizer.lua",
        event = "BufReadPre",
        opts = { user_default_options = { names = false } },
    },
}
