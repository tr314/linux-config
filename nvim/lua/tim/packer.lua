-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use  {
	  'nvim-telescope/telescope.nvim', version = '*',
	requires = {
	  {'nvim-lua/plenary.nvim'},
	  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  	}
      }

  use ({
	'neanias/everforest-nvim',
	as = 'everforest',
	config = function()
		vim.cmd('colorscheme everforest')
	end
	})

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!:).
		run = "make install_jsregexp"
	})

end)

