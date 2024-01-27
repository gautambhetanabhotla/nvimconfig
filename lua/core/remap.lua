local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
vim.g.mapleader = " "

keymap("n", "<leader>t", vim.cmd.NvimTreeFocus)
keymap("n", "<leader>y", vim.cmd.ToggleTerm)
-- keymap("i", "<Capslock>", "<ESC>", { noremap = true })
keymap("n", "<leader>s", vim.cmd.SymbolsOutline)


-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
