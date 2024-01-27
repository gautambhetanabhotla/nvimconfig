require "core.comment"
require "core.copilot"
require "core.lsp"
require "core.lualine"
require "core.nvimtree"
require "core.packer"
require "core.remap"
require "core.set"
require "core.telescope"
require "core.treesitter"
require "core.undotree"
---require "core.vimilluminate"
require "core.statuscol"
-- require "core.feline"
require "core.bufferline"
require "core.cursorline"
require "core.gitsigns"
require "core.ufo"
-- require "core.clangd"
require "core.toggleterm"
-- require "core.tabby"
require "core.whichkey"
require "core.autopairs"
require "core.noice"
require "core.symbolsoutline"
-- require "core.material"
-- require "core.iceberg"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

if vim.g.neovide then
	vim.o.guifont = "Monaspace Neon:h14"
	vim.g.neovide_font_features = {
		["Monaspace Neon"] = {
			"+ss01",
			"+ss02",
			"+ss03",
			"+ss04",
			"+ss05",
			"+ss06",
			"+ss07",
			"+ss08",
			"+calt",
			"+liga",
			"+dlig",
		},
	}
	vim.g.neovide_transparency = 0.9
	vim.g.neovide_refresh_rate = 120
	vim.g.neovide_refresh_rate_idle = 5
	vim.g.neovide_fullscreen = false
	vim.g.neovide_remember_window_size = true
	vim.g.neovide_cursor_antialiasing = true
	vim.g.neovide_cursor_animate_in_insert_mode = true
end

-- vim.cmd "Copilot disable"
