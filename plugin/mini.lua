do
	vim.pack.add({
		"https://github.com/nvim-mini/mini.nvim",
	})

	-- Mini icons

	if vim.g.have_nerd_font then
		local mini_icons = require("mini.icons")
		mini_icons.setup()
		mini_icons.mock_nvim_web_devicons()
	end

	-- Better Around/Inside textobjects
	--
	-- Examples:
	--  - va)  - [V]isually select [A]round [)]paren
	--  - yiiq - [Y]ank [I]nside [I]+1 [Q]uote
	--  - ci'  - [C]hange [I]nside [']quote
	require("mini.ai").setup({
		-- NOTE: Avoid conflicts with the built-in incremental selection mappings on Neovim>=0.12 (see `:help treesitter-incremental-selection`)
		mappings = {
			around_next = "aa",
			inside_next = "ii",
		},
		n_lines = 500,
	})

	-- Add/delete/replace surroundings (brackets, quotes, etc.)
	--
	-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
	-- - sd'   - [S]urround [D]elete [']quotes
	-- - sr)'  - [S]urround [R]eplace [)] [']
	require("mini.surround").setup()

	require("mini.indentscope").setup()
	require("mini.pairs").setup()
	require("mini.statusline").setup()
	require("mini.extra").setup()

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

	-- Buffer
	require("mini.tabline").setup()
end
