local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NORMAL MODE --
-- split window horizontal
keymap("n", "<leader>sh", "<C-w>s", opts)

-- split window vertical 
keymap("n", "<leader>sv", "<C-w>v", opts)

-- move between window & close
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<A-l>", "<C-w>l", opts)
keymap("n", "<leader>q", "<C-w>q", opts)

-- resize window
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize -2<CR>", opts)

-- tree file
-- keymap("n", "<leader>e", ":Lex 30<CR>", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- move between buffer / tabs
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- clear highlight search
keymap("n", "<leader>nh", ":nohl<CR>", opts)


-- INSERT MODE --
-- set j+k to exit insert mode
keymap("i", "jk", "<ESC>", opts)


-- VISUAL MODE --
-- stay in indent mode
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

