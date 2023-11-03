require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {"clangd", "texlab", "zk"}
})

-- require("lspconfig").clangd.setup {}
-- require("lspconfig").lua-language-server.setup {}
-- require("lspconfig").texlab.setup {}
-- require("lspconfig").zk.setup {}

