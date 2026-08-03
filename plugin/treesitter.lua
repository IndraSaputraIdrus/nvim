-- Auto build on update
vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		local name = ev.data.spec.name
		if name == "nvim-treesitter" then
			vim.cmd("TSUpdate")
		end
	end,
})

vim.pack.add({
	"https://github.com/nvim-treesitter/nvim-treesitter",
})

-- install and start treesitter in ftpplugin/<filetype>.lua
