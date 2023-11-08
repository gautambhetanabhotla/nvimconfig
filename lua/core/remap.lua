vim.g.mapleader = " "
vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeFocus)

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
