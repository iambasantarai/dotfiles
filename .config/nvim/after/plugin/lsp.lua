local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

local opts = { buffer = bufnr, remap = false }

local on_attach = function(client, bufnr)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under the cursor
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- go to definition
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts) -- go to implementations
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to definition
	vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts) -- go to type definition
	vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float, opts) -- show diagnostic for line
	vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
	vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
	vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, opts) -- trigger code action
	vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, opts) -- rename what is under the cursor
end

local capabilities = cmp_nvim_lsp.default_capabilities()

local signs = {
	error = "E",
	warn = "W",
	hint = "H",
	info = "I",
}

-- Configure language servers
local language_servers = {
	"gopls",
	"tsserver",
	"cssls",
	"html",
	"tailwindcss",
	"svelte",
	"marksman",
	"jsonls",
}

for _, language_server in ipairs(language_servers) do
	lspconfig[language_server].setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
end

lspconfig["lua_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		diagnostics = {
			globals = { "vim" },
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})
