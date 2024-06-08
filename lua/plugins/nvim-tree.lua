return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<C-n>",      "<cmd>NvimTreeToggle<CR>",         desc = "Toggle nvim tree" },
    { "<C-f>",      "<cmd>NvimTreeFocus<CR>",          desc = "Focus to file explorer" },
    { "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", desc = "Toggle file explorer on current file" }
  },
  config = function()
    local nvimtree = require("nvim-tree")

    -- configure nvim-tree
    nvimtree.setup({
      view = {
        relativenumber = false,
      },
      renderer = {
        indent_markers = {
          enable = false,
        icons = {
          corner = "",
          edge = "",
          item = "",
          bottom = "",
          none = "",
          },
        },
        indent_width = 2,
        root_folder_label = false
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      git = {
        ignore = false,
      },
    })
  end,
}
