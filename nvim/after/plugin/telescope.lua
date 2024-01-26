local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
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

-- keymaps for fuzzy finding
vim.keymap.set("n", "<C-s>", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<C-p>", "<cmd>Telescope git_files<CR>")
vim.keymap.set("n", "<Leader>fg", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fs", "<cmd>Telescope grep_string<CR>")
