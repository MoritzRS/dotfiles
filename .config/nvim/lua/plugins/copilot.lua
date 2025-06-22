return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {},
    keys = {
        { "<leader>cp", "<cmd>Copilot suggestion toggle_auto_trigger<cr>", desc = "[C]o[p]ilot" },
    }
}
