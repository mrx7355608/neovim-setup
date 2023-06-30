return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- essentials
	use("nvim-lua/plenary.nvim")

	-- Telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	-- harpoon for blazing fast file naviagtion (by theprimeagen)
	use("ThePrimeagen/harpoon")

	-- web dev icons
	use("nvim-tree/nvim-web-devicons")

	-- Lua line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- maximizes and restores current window
	use("szw/vim-maximizer")

	-- vim surround
	use("tpope/vim-surround")

	-- gitsigns
	use("lewis6991/gitsigns.nvim")

	-- git integaration
	use("tpope/vim-fugitive")

	-- for tmux navigations
	use("christoomey/vim-tmux-navigator")

	-- autoclosing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- Comment utility
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- Snippets
	use({
		"L3MON4D3/LuaSnip",
		tag = "v<1>.*",
		run = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
	})
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer") -- recommends text from current buffer
	use("hrsh7th/cmp-path") -- recommends file paths

	-- install lsp serveres
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- lsp servers config
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- Nvimtree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	})

	-- vim multiline cursor
	use("mg979/vim-visual-multi", { branch = "master" })

	-- Terminal
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- Themes
	use("bluz71/vim-nightfly-colors")
	use("tiagovla/tokyodark.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("folke/tokyonight.nvim")
	use("yeddaif/neovim-purple")

	-- Trouble nvim
	use({
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	})
end)
