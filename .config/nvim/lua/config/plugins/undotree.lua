local opts = { noremap = true, silent = true }

return {
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<Leader>u", vim.cmd.UndotreeToggle, opts)
		end,
	},
}
