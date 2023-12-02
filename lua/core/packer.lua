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
use 'freddiehaddad/feline.nvim'
-- Lua
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
use 'luukvbaal/statuscol.nvim'
use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
use "EdenEast/nightfox.nvim"
use 'yamatsum/nvim-cursorline'
use 'lewis6991/gitsigns.nvim'
use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use "rcarriga/nvim-notify"
use "MunifTanjim/nui.nvim"
use "folke/noice.nvim"
use 'simrat39/symbols-outline.nvim'
use 'folke/tokyonight.nvim'
use 'cocopon/iceberg.vim'
use 'xiyaowong/transparent.nvim'
end)
