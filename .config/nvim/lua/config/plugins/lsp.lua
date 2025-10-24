return {
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		opts = {
			servers = {
				lua_ls = {
					runtime = { version = "LuaJIT" },
				},
				gopls = {
					analyses = {
						unusedparams = true,
					},
					staticcheck = true,
					gofumpt = true,
				},
			},
		},
		config = function(_, opts)
			for server, config in pairs(opts.servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(
					config.capabilities
				)
				vim.lsp.enable(server)
				vim.lsp.config(server, config)

				vim.keymap.set("n", "<Leader>d", function()
					vim.diagnostic.open_float()
				end, { noremap = true, silent = true })
			end
		end,
	},
}
