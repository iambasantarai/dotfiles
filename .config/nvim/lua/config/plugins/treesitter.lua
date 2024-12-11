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
}
