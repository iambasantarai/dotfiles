local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- colorscheme
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	-- display hex colors
	"norcalli/nvim-colorizer.lua",

	-- commenting
	"numToStr/Comment.nvim",

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- lsp
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",

	-- mason
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",

	-- harpoon
	"theprimeagen/harpoon",

	-- undotree
	"mbbill/undotree",

	-- git
	"tpope/vim-fugitive",
	"lewis6991/gitsigns.nvim",

	-- surroundings
	"tpope/vim-surround",

	-- null-ls
	"jose-elias-alvarez/null-ls.nvim",

	-- auto closing
	"windwp/nvim-autopairs",

	-- prettier
	"MunifTanjim/prettier.nvim",

	-- treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- rest client interface
	"mistweaverco/kulala.nvim",
})
