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

-- mini files
local mini_files = require("mini.files")
mini_files.setup()
vim.keymap.set("n", "-", mini_files.open, { desc = "File manager" })
