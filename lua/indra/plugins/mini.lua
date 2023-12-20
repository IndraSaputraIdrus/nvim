return {
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
}
