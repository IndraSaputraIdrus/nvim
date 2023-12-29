return {
  "echasnovski/mini.nvim",
  version = false,
  depencencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("mini.animate").setup()

    require("mini.basics").setup({
      options = {
        extra_ui = true,
        win_borders = "double",
      },
      mappings = {
        windows = true,
      },
    })

    require("mini.surround").setup({
      search_method = "cover_or_next",
    })

    require("mini.indentscope").setup({
      draw = {
        animation = function()
          return 5
        end,
      },
      symbol = "│",
    })

    require("mini.pick").setup()

    -- MiniPick key bind
    local keymap = vim.api.nvim_set_keymap
    keymap("n", "<leader>ff", "<cmd>lua MiniPick.builtin.files()<CR>",
      { noremap = true, silent = true, desc = 'Find File' })
    keymap("n", "<leader>fb", "<cmd>lua MiniPick.builtin.buffers()<CR>",
      { noremap = true, silent = true, desc = 'Find Buffer' })
    keymap("n", "<leader>fs", "<cmd>lua MiniPick.builtin.grep_live()<CR>",
      { noremap = true, silent = true, desc = 'Find String' })
    keymap("n", "<leader>fh", "<cmd>lua MiniPick.builtin.help()<CR>",
      { noremap = true, silent = true, desc = 'Find Help' })

    require("mini.comment").setup()
    require("mini.trailspace").setup()
    require("mini.fuzzy").setup()
    require("mini.tabline").setup()
    require("mini.pairs").setup()
  end,
}
