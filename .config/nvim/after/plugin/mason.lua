local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
	    "rust_analyzer",
        "clangd",
        "cssls",
        "html",
        "lua_ls",
        "tsserver",
        "marksman",
    },
    automatic_installation = true
})
