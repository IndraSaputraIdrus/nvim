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

keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>") -- go to previous tab
keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>") -- go to next tab

-- plugins keymap

-- nvim-tree 
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- toggle term
keymap.set("n", "<F7>", "<cmd>ToggleTerm<cr>")
