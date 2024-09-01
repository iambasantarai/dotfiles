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
		"yaml",
		"markdown",
		"sql",
		"svelte",
	},
	autotag = {
		enable = true,
	},
	autopair = {
		enable = true,
	},
})
