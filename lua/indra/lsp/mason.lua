local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

local status_ok_mason, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_mason then
  return
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "cssls",
    "html",
    "tsserver",
    "emmet_ls",
  },
  automatic_installation = true,
})
