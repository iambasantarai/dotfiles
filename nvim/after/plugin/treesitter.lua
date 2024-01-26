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
		"json",
		"javascript",
		"lua",
		"rust",
		"yaml",
		"markdown",
		"haskell",
		"sql",
	},
	autotag = {
		enable = true,
	},
	autopair = {
		enable = true,
	},
})

