return {
  'hrsh7th/nvim-cmp',
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",       -- source for text in buffer
    "hrsh7th/cmp-path",         -- source for file system paths
    "L3MON4D3/LuaSnip",         -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    'rafamadriz/friendly-snippets'
  },
  config = function()
    -- Here is where you configure the autocompletion settings.
    local lsp_zero = require('lsp-zero')
    lsp_zero.extend_cmp()

    -- And you can configure cmp even more, if you want to.
    local cmp = require('cmp')
    local cmp_action = lsp_zero.cmp_action()

    -- setup snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      window = {
        completion = {
          border = "rounded",
          winhighlight = "Normal:none,FloatBorder:none,CursorLine:PmenuSel,Search:none"
        },
        documentation = {
          border = "rounded",
          winhighlight = "Normal:none,FloatBorder:none,CursorLine:PmenuSel,Search:none"
        },
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "luasnip" },
      },
      formatting = lsp_zero.cmp_format(),
      mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
      })
    })
  end
}
