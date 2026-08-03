vim.lsp.enable("svelte")

require("conform").formatters_by_ft.svelte = { "prettier" }

require("nvim-treesitter").install({ "svelte", "html", "css", "javascript", "typescript" })

vim.treesitter.start()
