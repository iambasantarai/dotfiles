return {

	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		lazy = false,
		config = function()
			vim.keymap.set({ "n", "x" }, "<Leader>rr", function()
				require("refactoring").select_refactor()
			end)
		end,
	},
}
