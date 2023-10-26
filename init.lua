require("indra.options")
require("indra.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local default_opts = { noremap = true, silent = true }

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			require("mini.statusline").setup({
				use_icons = true,
			})

			require("mini.animate").setup()

			require("mini.basics").setup({
				options = {
					extra_ui = true,
					win_borders = "double",
				},
				mappings = {
					windows = true,
				},
			})

			require("mini.base16").setup({
				-- tokyo night color scheme
				-- https://github.com/viniciusmuller/base16-tokyonight-scheme/
				palette = {
					base00 = "#24283b",
					base01 = "#1f2335",
					base02 = "#292e42",
					base03 = "#565f89",
					base04 = "#a9b1d6",
					base05 = "#c0caf5",
					base06 = "#c0caf5",
					base07 = "#c0caf5",
					base08 = "#f7768e",
					base09 = "#ff9e64",
					base0A = "#e0af68",
					base0B = "#9ece6a",
					base0C = "#1abc9c",
					base0D = "#41a6b5",
					base0E = "#bb9af7",
					base0F = "#ff007c",
				},
			})

			require("mini.files").setup({
				mappings = {
					go_in_plus = "<cr>",
					close = "<C-n>",
				},
			})

			require("mini.surround").setup({
				search_method = "cover_or_next",
			})

			require("mini.indentscope").setup({
				draw = {
					animation = function(s, n)
						return 5
					end,
				},
				symbol = "│",
			})

			require("mini.pick").setup()
			require("mini.comment").setup()
			require("mini.completion").setup()
			require("mini.trailspace").setup()
			require("mini.fuzzy").setup()
			require("mini.tabline").setup()
			require("mini.pairs").setup()
		end,
	},
	{ import = "indra.lsp" },
	{ import = "indra.mason" },
	{ import = "indra.treesitter" },
	{ import = "indra.null-ls" },
})
