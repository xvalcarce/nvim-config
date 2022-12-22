-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Nice colorscheme
	use {
		'catppuccin/nvim', as = "catppuccin",
	}

	-- nvim-treesitter
	use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})

	-- nvim-tree
  	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	-- lualine
  	use {
  		'nvim-lualine/lualine.nvim',
   		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  	}

	-- latex
	use 'lervag/vimtex'

	-- completion with nvim-cmp
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			-- lsp
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',

			-- cmp
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'kdheepak/cmp-latex-symbols',

			-- Snippet
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets'
		}
	}

	-- mason 
	use {
    	"williamboman/mason.nvim",
    	"williamboman/mason-lspconfig.nvim",
    	"neovim/nvim-lspconfig",
	}

end)
