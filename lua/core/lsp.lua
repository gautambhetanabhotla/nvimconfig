require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").clangd.setup({
opts = {
  servers = {
    -- Ensure mason installs the server
    clangd = {
      keys = {
        { "<leader>cR", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
      },
      root_dir = function(fname)
        return require("lspconfig.util").root_pattern(
          "Makefile",
          "configure.ac",
          "configure.in",
          "config.h.in",
          "meson.build",
          "meson_options.txt",
          "build.ninja"
        )(fname) or require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt")(
          fname
        ) or require("lspconfig.util").find_git_ancestor(fname)
      end,
      capabilities = {
        offsetEncoding = { "utf-8" },
      },
      cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=iwyu",
        "--completion-style=detailed",
        "--function-arg-placeholders",
        "--fallback-style=llvm",
      },
      init_options = {
        usePlaceholders = true,
        completeUnimported = true,
        clangdFileStatus = true,
      },
    },
  },
  setup = {
    clangd = function(_, opts)
      local clangd_ext_opts = require("lazyvim.util").opts("clangd_extensions.nvim")
      require("clangd_extensions").setup(vim.tbl_deep_extend("force", clangd_ext_opts or {}, { server = opts }))
      return false
    end,
  },
}
})

require("lspconfig").lua_ls.setup({
  settings = {
	Lua = {
	  diagnostics = {
		globals = { "vim" },
	  },
	  workspace = {
		library = {
		  [vim.fn.expand("$VIMRUNTIME/lua")] = true,
		  [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
		},
	  },
	},
  },
})

require("lspconfig").pyright.setup({
  settings = {
	python = {
	  analysis = {
		autoSearchPaths = true,
		useLibraryCodeForTypes = true,
		diagnosticMode = "workspace",
		typeCheckingMode = "basic",
		venvPath = "~/.virtualenvs",
		venv = "pyright",
	  },
	},
  },
})

require("lspconfig").rust_analyzer.setup({
  settings = {
	["rust-analyzer"] = {
	  cargo = {
		loadOutDirsFromCheck = true,
	  },
	  procMacro = {
		enable = true,
	  },
	  checkOnSave = {
		command = "clippy",
	  },
	},
  },
})

require("lspconfig").powershell_es.setup({
  settings = {
	powershell = {
	  scriptAnalysis = {
		enable = true,
	  },
	},
  },
})

require("lspconfig").neocmake.setup({
  cmd = { "neocmake" },
  filetypes = { "cmake" },
  root_dir = require("lspconfig.util").root_pattern("CMakeLists.txt", "compile_commands.json", ".git"),
})

require("lspconfig").marksman.setup({
  cmd = { "marksman" },
  filetypes = { "markdown" },
  root_dir = require("lspconfig.util").root_pattern(".git"),
})

require("lspconfig").texlab.setup({
  cmd = { "texlab" },
  filetypes = { "tex", "bib" },
  root_dir = require("lspconfig.util").root_pattern(".git"),
})

require("lspconfig").jsonls.setup({
  cmd = { "vscode-json-languageserver", "--stdio" },
  filetypes = { "json" },
  root_dir = require("lspconfig.util").root_pattern(".git"),
})

require("lspconfig").bashls.setup({
  cmd = { "bash-language-server", "start" },
  filetypes = { "sh", "zsh" },
  root_dir = require("lspconfig.util").root_pattern(".git"),
})

require("lspconfig").fennel_language_server.setup({
  cmd = { "fennel-language-server" },
  filetypes = { "fennel" },
  root_dir = require("lspconfig.util").root_pattern(".git"),
})

require("lspconfig").html.setup({
  cmd = { "html-languageserver", "--stdio" },
  filetypes = { "html" },
  root_dir = require("lspconfig.util").root_pattern(".git"),
})

require("lspconfig").cssls.setup({
  cmd = { "css-languageserver", "--stdio" },
  filetypes = { "css" },
  root_dir = require("lspconfig.util").root_pattern(".git"),
})

require("lspconfig").grammarly.setup({
  cmd = { "grammarly", "lsp" },
  filetypes = { "markdown", "tex", "text" },
  root_dir = require("lspconfig.util").root_pattern(".git"),
})

require("lspconfig").intelephense.setup({
  cmd = { "intelephense", "--stdio" },
  filetypes = { "php" },
  root_dir = require("lspconfig.util").root_pattern(".git"),
})

require("lspconfig").prettierd.setup({
  cmd = { "prettierd", "--stdio" },
  filetypes = { "javascript", "typescript", "json", "yaml", "markdown", "html", "css", "scss", "less" },
  root_dir = require("lspconfig.util").root_pattern(".git"),
})
