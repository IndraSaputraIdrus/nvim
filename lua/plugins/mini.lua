return {
  'nvim-mini/mini.nvim',
  version = false,
  lazy = false,
  config = function()
    -- icon
    local MiniIcons = require 'mini.icons'
    MiniIcons.setup()
    MiniIcons.mock_nvim_web_devicons()
    MiniIcons.tweak_lsp_kind()

    -- file tree
    require('mini.files').setup()
    vim.keymap.set('n', '-', '<cmd>lua MiniFiles.open()<cr>', { desc = 'Open mini files' })

    -- status line
    require('mini.statusline').setup()

    -- mini pick
    require('mini.pick').setup()
    vim.keymap.set('n', '<leader>ff', '<cmd>Pick files tool=git<cr>', { desc = 'Open mini picker files' })

    -- mini a/i
    require('mini.ai').setup()

    -- buffer list
    require("mini.tabline").setup()
    vim.keymap.set("n", "<S-h>", "<cmd>bprev<cr>", { desc = "Go to previous buffer" } )
    vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Go to next buffer" } )
  end,
}
