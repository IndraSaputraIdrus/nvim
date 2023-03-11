local status_ok, lspconfig = pcall(require, "lspconfig") 
if not status_ok then
  return
end

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp") 
if not status_ok then
  return
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- typescript and javascript server
lspconfig['tsserver'].setup {
  capabilities = capabilities,
  filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"};
}

-- configure css server
lspconfig["cssls"].setup({
  capabilities = capabilities,
})

-- configure emmet language server
lspconfig["emmet_ls"].setup({
  capabilities = capabilities,
  filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
})
