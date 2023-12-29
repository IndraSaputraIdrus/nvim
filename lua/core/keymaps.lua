local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- set j+k to exit insert mode
keymap("i", "jk", "<ESC>", opts)

-- buffer
keymap("n", "<S-h>", "<cmd>bprev<CR>", opts)
keymap("n", "<S-l>", "<cmd>bnext<CR>", opts)
keymap("n", "<leader>x", "<cmd>bdelete<CR>", {})
