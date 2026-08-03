vim.lsp.enable({ "nil_ls" })

require("conform").formatters_by_ft.nix = { "alejandra", "nixpkgs_fmt" }

require("nvim-treesitter").install({ "nix" })
vim.treesitter.start()
