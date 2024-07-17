local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
	    "gopls",
	    "jsonls",
	    "rust_analyzer",
        "cssls",
        "html",
        "lua_ls",
        "marksman",
        "tailwindcss",
        "tsserver",
    },
    automatic_installation = true
})
