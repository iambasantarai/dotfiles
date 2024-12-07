return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
			"jayp0521/mason-null-ls.nvim",
		},
		config = function()
			local null_ls = require("null-ls")
			local formatting = null_ls.builtins.formatting
			local diagnostics = null_ls.builtins.diagnostics

			require("mason-null-ls").setup({
				ensure_installed = {
					"eslint_d",
					"gofumpt",
					"goimports_reviser",
					"golines",
					"prettier",
					"shfmt",
					"stylua",
				},
				automatic_installation = true,
				handlers = {},
			})

			local augroup =
				vim.api.nvim_create_augroup("LspFormattingNullLs", {})

			null_ls.setup({
				sources = {
					diagnostics.eslint_d,
					formatting.gofumpt,
					formatting.golines,
					formatting.goimports_reviser,
					formatting.prettier,
					formatting.shfmt.with({ args = { "-i", "4" } }),
					formatting.stylua,
				},
				on_attach = function(current_client, bufnr)
					if
						current_client.supports_method(
							"textDocument/formatting"
						)
					then
						vim.api.nvim_clear_autocmds({
							group = augroup,
							buffer = bufnr,
						})
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({
									filter = function(client)
										return client.name == "null-ls"
									end,
									bufnr = bufnr,
								})
							end,
						})
					end
				end,
			})
		end,
	},
}
