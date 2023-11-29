vim.g.mapleader = " "
vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>y", vim.cmd.ToggleTerm)
-- vim.keymap.set("i", "<Capslock>", "<ESC>", { noremap = true })
vim.keymap.set("n", "<leader>s", vim.cmd.SymbolsOutline)

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
