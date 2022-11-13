vim.g.mapleader = " "

local keymap = vim.keymap

--general keymap

keymap.set("i", "jk", "<ESC>") -- remap key to normal mode in insert

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear highlight saat selesai search

keymap.set("n", "x", '"_x"') -- agar saat delete menggunakan x tidak mengcopy tetapi menghapus

keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

keymap.set("n", "<leader>sv", "<C-w>v") -- split window verticaly
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontaly 
keymap.set("n", "<leader>se", "<C-w>=") -- buat window dengan lebar yang sama
keymap.set("n", "<leader>sx", ":close<CR>") -- close window

keymap.set("n", "<S-h>", ":tabp<CR>") -- go to previous tab
keymap.set("n", "<S-l>", ":tabn<CR>") -- go to next tab

-- plugins keymap

-- nvim-tree 
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffer<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- toggle term
keymap.set("n", "<F7>", "<cmd>ToggleTerm<cr>")
