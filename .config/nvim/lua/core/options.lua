vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Appearance
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.winborder = "single"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"


-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Folding
vim.opt.foldlevel = 99
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Scrolling
vim.opt.scrolloff = 0

-- Spelling
vim.opt.spell = true
vim.opt.spelllang = { "en_us", "de_de" }

-- Diagnostics
vim.diagnostic.config({
    virtual_lines = {
        current_line = true,
        prefix = "",
    },
})
