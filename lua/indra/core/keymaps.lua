local keymap = vim.api.nvim_set_keymap
function default_opts(desc)
	desc = desc or "no description"
	return {
		noremap = true,
		silent = true,
		desc = desc,
	}
end

-- set j+k to exit insert mode
keymap("i", "jk", "<ESC>", default_opts())

-- autocomplete
keymap("i", "<Tab>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { expr = true })
keymap("i", "<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true })

-- files
-- keymap('n', '<C-n>', '<cmd>lua MiniFiles.open()<cr>', default_opts("Toggle menu files"))

-- pick
keymap("n", "<leader>ff", "<cmd>lua MiniPick.builtin.files()<cr>", default_opts("Search files"))

-- buffer
keymap("n", "<S-h>", "<cmd>bprev<cr>", default_opts("Go to prev buffer"))
keymap("n", "<S-l>", "<cmd>bprev<cr>", default_opts("Go to next buffer"))
keymap("n", "<leader>x", "<cmd>bdelete<cr>", default_opts("Close current buffer"))

-- for completeion
local keys = {
	["cr"] = vim.api.nvim_replace_termcodes("<CR>", true, true, true),
	["ctrl-y"] = vim.api.nvim_replace_termcodes("<C-y>", true, true, true),
	["ctrl-y_cr"] = vim.api.nvim_replace_termcodes("<C-y><CR>", true, true, true),
}

_G.cr_action = function()
	if vim.fn.pumvisible() ~= 0 then
		-- If popup is visible, confirm selected item or add new line otherwise
		local item_selected = vim.fn.complete_info()["selected"] ~= -1
		return item_selected and keys["ctrl-y"] or keys["ctrl-y_cr"]
	else
		-- If popup is not visible, use plain `<CR>`. You might want to customize
		-- according to other plugins. For example, to use 'mini.pairs', replace
		-- next line with `return require('mini.pairs').cr()`
		return keys["cr"]
	end
end

vim.keymap.set("i", "<CR>", "v:lua._G.cr_action()", { expr = true })
