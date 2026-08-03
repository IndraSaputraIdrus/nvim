vim.pack.add({
	"https://github.com/stevearc/conform.nvim",
})

-- Auto-format on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf, lsp_fallback = true })
	end,
})

vim.keymap.set("n", "<leader>fm", require("conform").format, { desc = "Manual format code" })
