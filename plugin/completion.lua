vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", version = "v1.10.2" },
	{ src = "https://github.com/L3MON4D3/LuaSnip", version = vim.version.range("2.0") },
	"https://github.com/rafamadriz/friendly-snippets",
})

require("blink.cmp").setup({
	snippets = {
		preset = "luasnip",
	},
	keymap = {
		preset = "super-tab",
	},
	appearance = {
		nerd_font_variant = "mono",
	},
	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 500,
			window = {
				border = "rounded",
			},
		},
		menu = {
			border = "rounded",
			winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursoLine:BlinkCmpMenuSelection,Search:None",
		},
	},
	sources = {
		default = {
			"lsp",
			"path",
			"snippets",
			"buffer",
		},
	},
	fuzzy = {
		implementation = "prefer_rust_with_warning",
	},
})

require("luasnip").filetype_extend("htmlangular", { "html" })
require("luasnip.loaders.from_vscode").lazy_load()
