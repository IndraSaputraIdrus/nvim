vim.lsp.enable 'ts_ls'
require('conform').formatters_by_ft.typescript = {
  'biome-check',
}
require('nvim-treesitter').install { 'typescript' }
