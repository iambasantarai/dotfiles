local prettier = require("prettier")

prettier.setup({
	bin = "prettier",
	filetypes = {
		"css",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"markdown",
		"typescript",
		"typescriptreact",
		"yaml",
	},
})
