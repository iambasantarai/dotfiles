return {
	{
		"blazkowolf/gruber-darker.nvim",
		opts = {
			italic = {
				comments = true,
			},
		},
		config = function()
			vim.cmd.colorscheme("gruber-darker")
		end,
	},
}
