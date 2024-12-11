local opts = { noremap = true, silent = true }

return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local actions = require("telescope.actions")

			require("telescope").setup({
				defaults = {
					{ file_ignore_patterns = { "node_modules" } },
					mappings = {
						i = {
							["<C-p>"] = actions.move_selection_previous,
							["<C-n>"] = actions.move_selection_next,
							["<C-q>"] = actions.close,
						},
					},
				},
			})

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-s>", builtin.find_files, opts)
			vim.keymap.set("n", "<C-p>", builtin.git_files, opts)
			vim.keymap.set("n", "<Leader>fg", builtin.live_grep, opts)
			vim.keymap.set("n", "<Leader>fs", builtin.grep_string, opts)
		end,
	},
}
