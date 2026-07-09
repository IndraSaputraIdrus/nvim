vim.pack.add({
	"https://github.com/nvim-mini/mini.nvim",
})

-- Mini icons
local mini_icons = require("mini.icons")
mini_icons.setup()
mini_icons.tweak_lsp_kind()

require("mini.indentscope").setup()
require("mini.pairs").setup()
require("mini.surround").setup()
require("mini.statusline").setup()
require("mini.extra").setup()

vim.schedule(function()
	-- mini files
	require("mini.files").setup()
	vim.keymap.set("n", "-", "<cmd>lua MiniFiles.open()<cr>", { desc = "File manager" })

	-- mini pick
	require("mini.pick").setup()

	vim.keymap.set("n", "<leader>ff", "<cmd>Pick files tool='rg'<cr>", { desc = "Open file picker" })

	vim.keymap.set(
		"n",
		"<leader>fd",
		"<cmd>lua MiniExtra.pickers.diagnostic()<cr>",
		{ desc = "Open diagnostic picker" }
	)

	vim.keymap.set(
		"n",
		"<leader>fgd",
		"<cmd>lua MiniExtra.pickers.lsp({ scope = 'declaration' })<cr>",
		{ desc = "Open diagnostic picker" }
	)

	vim.keymap.set(
		"n",
		"<leader>fgD",
		"<cmd>lua MiniExtra.pickers.lsp({ scope = 'definition' })<cr>",
		{ desc = "Open diagnostic picker" }
	)

	vim.keymap.set(
		"n",
		"<leader>fgi",
		"<cmd>lua MiniExtra.pickers.lsp({ scope = 'implementation' })<cr>",
		{ desc = "Open diagnostic picker" }
	)

	-- Git
	require("mini.git").setup()
end)
