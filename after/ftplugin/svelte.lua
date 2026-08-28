vim.lsp.enable { 'svelte', 'oxfmt' }
require('conform').formatters_by_ft.svelte = { 'oxfmt' }
require('nvim-treesitter').install {
  'svelte',
  'html',
  'css',
  'javascript',
  'typescript',
}
