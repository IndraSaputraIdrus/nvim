local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
-- autocommad update plugin when save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync 
  augroup end
]])

-- require packer
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border= "rounded" }
    end,
  },
}

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"

  -- colorscheme
  use "navarasu/onedark.nvim"

  -- lua line
  use "nvim-lualine/lualine.nvim"

  -- nvim tree
  use "nvim-tree/nvim-tree.lua"
  use 'nvim-tree/nvim-web-devicons'

  -- lsp server
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- auto completetion
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
  }
  -- snippet
  use {
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    "rafamadriz/friendly-snippets"
  }

  -- null ls
  use "jose-elias-alvarez/null-ls.nvim"

  -- treesitter
  use "nvim-treesitter/nvim-treesitter"
  use "windwp/nvim-ts-autotag"

  -- bufferline
  use "akinsho/bufferline.nvim"

  -- vim visual multi
  use "mg979/vim-visual-multi"

  -- nvim comment 
  use "terrortylor/nvim-comment"

  -- nvim auto pairs
  use "windwp/nvim-autopairs"

  -- nvim surround
  use "tpope/vim-surround"

  -- toggle term
  use "akinsho/toggleterm.nvim"

  -- indent line
  use "lukas-reineke/indent-blankline.nvim"



  if packer_bootstrap then
    require("packer").sycn()
  end
end)
