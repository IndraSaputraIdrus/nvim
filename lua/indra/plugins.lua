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

  -- My plugins here

  -- color scheme
  use 'ellisonleao/gruvbox.nvim'
   
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
  
  if packer_bootstrap then
    require('packer').sync()
  end
end)
