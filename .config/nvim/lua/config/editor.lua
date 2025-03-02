vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 999

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.foldlevel = 99
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.opt.spell = true
vim.opt.spelllang = { "en_us", "de_de" }

vim.api.nvim_set_keymap("n", "gb", "<C-t>", { noremap = true, silent = true, desc = "Go Back"})
vim.api.nvim_set_keymap("n", "tf", "za", { noremap = true, silent = true, desc = "Toggle Fold" })
vim.api.nvim_set_keymap("n", "<leader>cs", "<cmd>nohlsearch<CR>", { noremap = true, silent = true, desc = "Clear Search" })