local opts = { noremap = true, silent = true }

return {
	{
		"mistweaverco/kulala.nvim",
		config = function()
			require("kulala").setup({
				debug = true,
				split_direction = "vertical",
			})
			vim.keymap.set(
				"n",
				"<Leader>kr",
				"<cmd>lua require('kulala').run()<CR>",
				opts
			)
			vim.keymap.set(
				"n",
				"<Leader>kt",
				"<cmd>lua require('kulala').toggle_view()<CR>",
				opts
			)
			vim.keymap.set(
				"n",
				"<Leader>kp",
				"<cmd>lua require('kulala').jump_prev()<CR>",
				opts
			)
			vim.keymap.set(
				"n",
				"<Leader>kn",
				"<cmd>lua require('kulala').jump_next()<CR>",
				opts
			)
			vim.keymap.set(
				"n",
				"<Leader>kc",
				"<cmd>lua require('kulala').copy()<CR>",
				opts
			)
		end,
	},
}
