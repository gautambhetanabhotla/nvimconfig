-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('mbbill/undotree')
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
	  -- LSP Support
	  {'neovim/nvim-lspconfig'},
	  {'williamboman/mason.nvim'},
	  {'williamboman/mason-lspconfig.nvim'},

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},
	  {'hrsh7th/cmp-buffer'},
	  {'hrsh7th/cmp-path'},
	  {'saadparwaiz1/cmp_luasnip'},
	  {'hrsh7th/cmp-nvim-lsp'},
	  {'hrsh7th/cmp-nvim-lua'},

	  -- Snippets
	  {'L3MON4D3/LuaSnip'},
	  {'rafamadriz/friendly-snippets'},
  }
}
use('github/copilot.vim')
use('nvim-tree/nvim-tree.lua')
use('nvim-tree/nvim-web-devicons')
use {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
}
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use('RRethy/vim-illuminate')
require('illuminate').configure(config)
use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}
use 'andweeb/presence.nvim'
use('ThePrimeagen/vim-be-good')
use {'nyoom-engineering/oxocarbon.nvim'}
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
use 'nanozuki/tabby.nvim'
--use 'freddiehaddad/feline.nvim'
end)
