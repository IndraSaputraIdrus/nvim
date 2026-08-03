require("conform").formatters_by_ft.python = {
	"ruff_fix",
	"ruff_format",
}

vim.lsp.enable("ty")

require("nvim-treesitter").install({ "python" })
vim.treesitter.start()
