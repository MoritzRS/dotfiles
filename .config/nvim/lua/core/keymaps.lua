vim.api.nvim_set_keymap("i", "<C-s>", "<C-O>:update<CR>", { noremap = true, silent = true, desc = "Save" })

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true, desc = "Escape" })
vim.api.nvim_set_keymap("t", "jj", "<C-\\><C-N>", { noremap = true, silent = true, desc = "Escape" })

vim.api.nvim_set_keymap("n", "gb", "<C-t>", { noremap = true, silent = true, desc = "[G]o [B]ack" })
vim.api.nvim_set_keymap("n", "tf", "za", { noremap = true, silent = true, desc = "[T]oggle [F]old" })
vim.api.nvim_set_keymap("n", "<leader>cs", "<cmd>nohlsearch<CR>",
    { noremap = true, silent = true, desc = "[C]lear [S]earch" })

-- LSP
vim.api.nvim_set_keymap("n", "rn", "<cmd>lua vim.lsp.buf.rename()<cr>",
    { noremap = true, silent = true, desc = "[R]e[n]ame" })
vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>",
    { noremap = true, silent = true, desc = "[C]ode [A]ction" })
