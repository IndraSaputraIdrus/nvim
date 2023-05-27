local servers = require("indra.lsp.listserver")
require("mason").setup()
require("mason-lspconfig").setup{
  ensure_installed = servers,
  automatic_instalation = true,
}
