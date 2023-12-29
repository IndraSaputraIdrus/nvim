return {
  'alexghergh/nvim-tmux-navigation',
  keys = {
    { "<C-h>", "<cmd>NvimTmuxNavigateLeft<CR>",  desc = "Tmux navigate left" },
    { "<C-j>", "<cmd>NvimTmuxNavigateDown<CR>",  desc = "Tmux navigate down" },
    { "<C-k>", "<cmd>NvimTmuxNavigateUp<CR>",    desc = "Tmux navigate up" },
    { "<C-l>", "<cmd>NvimTmuxNavigateRight<CR>", desc = "Tmux navigate right" },
  },
  config = true
}
