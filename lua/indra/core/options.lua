local opt = vim.opt

vim.g.mapleader = " "
opt.number = true
opt.scrolloff = 10
opt.clipboard = "unnamed,unnamedplus"
opt.signcolumn = "yes"

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.showtabline = 2

opt.list = false
