return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufwritePre' },
  keys = {
    {
      '<leader>fm',
      function() require('conform').format { async = true, lsp_fallback = true } end,
      desc = 'format buffer',
    },
  },
  opts = {
    default_format_opts = {
      lsp_format = 'fallback',
    },
    formatters_by_ft = {
      lua = { 'stylua' },
    },
  },
}
