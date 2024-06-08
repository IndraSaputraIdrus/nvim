return {
  "navarasu/onedark.nvim",
  name = "onedark",
  priority = 1000,
  config = function()
    require("onedark").setup({
      style = 'darker'
    })
    require("onedark").load()
    vim.cmd.colorscheme "onedark"
  end
}
