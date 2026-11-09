return {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'mason-org/mason.nvim', opts = {}}
    },
    config = function()
      vim.lsp.enable({
        "lua_ls",
      })
    end
}
 
