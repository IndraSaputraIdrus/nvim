vim.pack.add({
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
})

require("mason").setup()

vim.lsp.enable({ "lua_ls" })

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
	callback = function(event)
		local bufnr = event.buf

		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, { buffer = bufnr, remap = false, desc = "Goto definition" })
		vim.keymap.set("n", "gD", function()
			vim.lsp.buf.declaration()
		end, { buffer = bufnr, remap = false, desc = "Goto declaration" })
		vim.keymap.set("n", "ge", function()
			vim.diagnostic.goto_next()
		end, { buffer = bufnr, remap = false, desc = "Goto next error" })
		vim.keymap.set("n", "gE", function()
			vim.diagnostic.goto_prev()
		end, { buffer = bufnr, remap = false, desc = "Goto prev error" })
		vim.keymap.set("n", "<leader>vd", function()
			vim.diagnostic.open_float()
		end, { buffer = bufnr, remap = false, desc = "View diagnostics" })

		vim.keymap.set("n", "<leader>vh", function()
			vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
		end, { buffer = bufnr, remap = false, desc = "Toggle inlay hints" })
	end,
})
