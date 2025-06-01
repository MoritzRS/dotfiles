return {
    "folke/snacks.nvim",
    dependencies = {
        {
            "folke/todo-comments.nvim",
            dependencies = { "nvim-lua/plenary.nvim" },
            event = { "BufEnter" },
            cmd = { "TodoTelescope" },
            opts = {},
        }
    },
    priority = 1000,
    lazy = false,
    opts = {
        bigfile = { enabled = true },
        dashboard = {
            enabled = true,
            preset = {
                keys = {
                    { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                    { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                    { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                    { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                    { icon = " ", key = "p", desc = "Projects", action = ":lua Snacks.dashboard.pick('projects', { dev = '~/Dev' })" },
                    { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                    { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                    { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                    { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                },
            },
            sections = {
                { section = "header" },
                { section = "startup",  padding = 2 },
                { section = "keys",     gap = 1,                   padding = 2 },
                { section = "projects", title = "Recent Projects", indent = 2, padding = 1 },
            }
        },
        image = { enabled = true },
        indent = {
            enabled = true,
            animate = { enabled = false },
        },
        input = { enabled = true },
        lazygit = { enabled = true },
        picker = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scratch = { enabled = true },
        statuscolumn = { enabled = true },
        terminal = { enabled = true },
    },
    keys = {
        -- Finders
        { "<leader><space>", function() Snacks.picker.smart() end,                                      desc = "Smart Find" },
        { "<leader>ff",      function() Snacks.picker.files() end,                                      desc = "[F]ind [F]iles" },
        { "<leader>fb",      function() Snacks.picker.buffers({ layout = "select" }) end,               desc = "[F]ind [B]uffers" },
        { "<leader>fr",      function() Snacks.picker.recent() end,                                     desc = "[F]ind [R]ecent" },
        { "<leader>fp",      function() Snacks.picker.projects({ dev = "~/Dev" }) end,                  desc = "[F]ind [P]rojects" },
        { "<leader>fg",      function() Snacks.picker.git_files() end,                                  desc = "[F]ind [G]it Files" },
        { "<leader>fk",      function() Snacks.picker.keymaps({ layout = "select" }) end,               desc = "[F]ind [K]eymaps" },
        { "<leader>fc",      function() Snacks.picker.colorschemes({ layout = "select" }) end,          desc = "[F]ind [C]olorscheme" },
        { "<leader>fd",      function() Snacks.picker.diagnostics_buffer() end,                         desc = "[F]ind [D]iagnostics in Buffer" },
        { "<leader>fD",      function() Snacks.picker.diagnostics() end,                                desc = "[F]ind [D]iagnostics" },
        { "<leader>ft",      function() Snacks.picker.explorer({ include = { "hidden" } }) end,         desc = "[F]ile [T]ree" },

        -- Search
        { "<leader>sb",      function() Snacks.picker.lines({ layout = "select" }) end,                 desc = "[S]earch in [B]uffer" },
        { "<leader>sB",      function() Snacks.picker.grep_buffers() end,                               desc = "[S]earch [B]uffers" },
        { "<leader>sg",      function() Snacks.picker.grep() end,                                       desc = "[S]earch [G]rep" },
        { "<leader>st",      function() Snacks.picker.todo_comments({ layout = "select" }) end,         desc = "[S]earch [T]o-Do" },
        { "<leader>ss",      function() Snacks.picker.spelling({ layout = "select" }) end,              desc = "[S]uggest [S]pelling" },
        { "<leader>sm",      function() Snacks.picker.marks({ layout = "select" }) end,                 desc = "[S]earch [M]ark" },

        -- Git
        { "<leader>gb",      function() Snacks.picker.git_branches() end,                               desc = "[G]it [B]ranches" },
        { "<leader>gs",      function() Snacks.picker.git_status() end,                                 desc = "[G]it [S]tatus" },
        { "<leader>gS",      function() Snacks.picker.git_stash() end,                                  desc = "[G]it [S]tash" },
        { "<leader>gd",      function() Snacks.picker.git_diff() end,                                   desc = "[G]it [D]iff" },

        -- LSP
        { "gd",              function() Snacks.picker.lsp_definitions() end,                            desc = "[G]oto [D]efinition" },
        { "gD",              function() Snacks.picker.lsp_declarations() end,                           desc = "[G]oto [D]eclaration" },
        { "gr",              function() Snacks.picker.lsp_references({ layout = "select" }) end,        desc = "[G]oto [R]eferences" },
        { "gI",              function() Snacks.picker.lsp_implementations({ layout = "select" }) end,   desc = "[G]oto [I]mplementation" },
        { "gy",              function() Snacks.picker.lsp_type_definitions({ layout = "select" }) end,  desc = "[G]oto T[y]pe Definitions" },
        { "<leader>ls",      function() Snacks.picker.lsp_symbols({ layout = "select" }) end,           desc = "[L]SP [S]ymbold" },
        { "<leader>lS",      function() Snacks.picker.lsp_workspace_symbols({ layout = "select" }) end, desc = "[L]SP Workspace [S]ymbols" },

        { "<leader>S",       function() Snacks.scratch.select() end,                                    desc = "[S]cratches" },
        { "<leader>.",       function() Snacks.scratch() end,                                           desc = "Open Scratch" },

        -- Terminal
        { "<leader>to",      function() Snacks.terminal.open() end,                                     desc = "[T]erminal [O]pen" },
        { "<leader>tt",      function() Snacks.terminal.toggle() end,                                   desc = "[T]erminal [T]oggle" },
    },
}
