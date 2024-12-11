return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
				},
				indent = {
					enable = true,
				},
				ensure_installed = {
					"bash",
					"c",
					"css",
					"dockerfile",
					"html",
					"http",
					"javascript",
					"jsdoc",
					"json",
					"lua",
					"markdown",
					"sql",
					"svelte",
					"toml",
					"yaml",
				},
				autotag = {
					enable = true,
				},
				autopair = {
					enable = true,
				},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("treesitter-context").setup({
				enable = true,
			})
		end,
	},
}
