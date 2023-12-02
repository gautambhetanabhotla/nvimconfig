vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.g.mapleader = " "

local set = vim.opt
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

vim.opt.termguicolors = true
vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme iceberg")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
