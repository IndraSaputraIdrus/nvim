vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync 
  augroup end
]])
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

local status, packer = pcall(require, "packer")
if not status then
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

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim"
  
  -- My plugins here

  -- color scheme
  use 'ellisonleao/gruvbox.nvim'
  use 'Mofiqul/dracula.nvim'
   
  -- nvim tree
  use 'nvim-tree/nvim-tree.lua' 
  use 'nvim-tree/nvim-web-devicons'

  -- comment
  use 'numToStr/Comment.nvim'

  -- vim surround
  use 'tpope/vim-surround'

  -- treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }

  use 'windwp/nvim-ts-autotag' -- auto tag using treesitter

  -- status bar
  use 'nvim-lualine/lualine.nvim'

  -- lsp 
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use 'jose-elias-alvarez/null-ls.nvim'

  -- autocompletion
  use 'hrsh7th/cmp-nvim-lsp'  
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- snippet 
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- toggle term
  use 'akinsho/toggleterm.nvim'

  -- buffer line
  -- using packer.nvim
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  
  if packer_bootstrap then
    require('packer').sync()
  end
end)
