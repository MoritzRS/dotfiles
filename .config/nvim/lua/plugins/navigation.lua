return {
    -- fuzzy finder
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-tree/nvim-web-devicons" },
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
            { "nvim-telescope/telescope-project.nvim" },
            { "nvim-telescope/telescope-ui-select.nvim" },
        },
        cmd = { "Telescope" },
        keys = {
            { "<leader>lk",  "<cmd>Telescope keymaps<cr>",                   desc = "List Keymaps" },
            { "<leader>lpd", "<cmd>Telescope project<cr>",                   desc = "List Projects Directories" },
            { "<leader>lf",  "<cmd>Telescope find_files hidden=true<cr>",    desc = "List Files" },
            { "<leader>lb",  "<cmd>Telescope buffers<cr>",                   desc = "List Buffers" },
            { "<leader>lr",  "<cmd>Telescope lsp_references<cr>",            desc = "List References" },
            { "<leader>lds", "<cmd>Telescope lsp_document_symbols<cr>",      desc = "List Document Symbols" },
            { "<leader>lps", "<cmd>Telescope lsp_workspace_symbols<cr>",     desc = "List Project Symbols" },
            { "<leader>lgb", "<cmd>Telescope git_branches<cr>",              desc = "List Git Branches" },
            { "<leader>lgs", "<cmd>Telescope git_status<cr>",                desc = "List Git Status" },
            { "<leader>lgc", "<cmd>Telescope git_commits<cr>",               desc = "List Git Commits" },

            { "<leader>sp",  "<cmd>Telescope live_grep<cr>",                 desc = "Search in Project" },
            { "<leader>sb",  "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search in Buffer" },

            { "<leader>qf",  "<cmd>Telescope quickfix<cr>",                  desc = "List Quickfix" },
            { "<leader>ss",  "<cmd>Telescope spell_suggest<cr>",             desc = "Spell Suggest" },
        },
        config = function(opts)
            local telescope = require("telescope")
            telescope.setup({
                defaults = {
                    timeout = 5000,
                    sorting_strategy = "ascending",
                    layout_config = {
                        prompt_position = "top",
                    },
                    preview = {
                        timeout = 2000,
                        filesize_limit = 0.1,
                    },
                    file_ignore_patterns = {
                        ".cache",
                        ".git",
                        "node_modules",
                    },
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_cursor({}),
                    },
                },
            })

            telescope.load_extension("fzf")
            telescope.load_extension("project")
            telescope.load_extension("ui-select")
        end,
    },

    -- file explorer
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        cmd = { "Neotree" },
        keys = {
            { "<leader>ft", "<cmd>Neotree toggle filesystem<cr>", desc = "File Tree" },
            { "<leader>bt", "<cmd>Neotree toggle buffers<cr>", desc = "Buffer Tree" },
            { "<leader>gt", "<cmd>Neotree toggle git_status<cr>", desc = "Git Tree" },
            { "<leader>st", "<cmd>Neotree toggle document_symbols<cr>", desc = "Symbol Tree" },
        },
        opts = {
            sources = {
                "filesystem",
                "document_symbols",
                "git_status",
                "buffers",
            },
            source_selector = {
                winbar = true,
                sources = {
                    { source = "filesystem" },
                    { source = "document_symbols" },
                    { source = "git_status" },
                    { source = "buffers" },
                }
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                }
            },
            window = {
                position = "left",
                mappings = {
                    ["l"] = "open",
                    ["h"] = "close_node",
                    ["<space>"] = "none",
                    ["P"] = { "toggle_preview", config = { use_float = false } },
                }
            },
        }
    },

    -- terminal
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        cmd = { "ToggleTerm" },
        keys = {
            { "<C-T>", "<cmd>ToggleTerm<cr>",            desc = "Toggle Terminal" },
            { "<C-T>", "<C-\\><C-N><cmd>ToggleTerm<CR>", mode = "t", desc = "Toggle Terminal" },
        },
        opts = {
            direction = "float",
        }
    }
}

