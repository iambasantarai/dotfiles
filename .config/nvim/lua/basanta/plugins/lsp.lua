local language_servers = {
    "bashls",
    "cssls",
    "dockerls",
    "gopls",
    "harper_ls",
    "html",
    "jsonls",
    "lua_ls",
    "marksman",
    "rust_analyzer",
    "sqlls",
    "svelte",
    "tailwindcss",
    "ts_ls",
    "yamlls",
}

return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
        },
        config = function()
            local lspconfig = require("lspconfig")
            local cmp_nvim_lsp = require("cmp_nvim_lsp")
            local capabilities = cmp_nvim_lsp.default_capabilities()
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            local cmp_select = { behavior = cmp.ConfirmBehavior.Select }

            cmp.setup({
                completion = {
                    completeopt = "menu,menuone,preview,noselect",
                },
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                sources = {
                    { name = "path" },
                    { name = "luasnip" },
                    { name = "nvim_lsp", keyword_length = 3 },
                    { name = "buffer", keyword_length = 3 },
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select), -- previous suggestion
                    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select), -- next suggestion
                    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
                    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
                }),
            })

            local on_attach = function(client, bufnr)
                local opts = { buffer = bufnr, remap = false }

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
                    Lua = {
                        runtime = { version = "LuaJIT" },
                        diagnostics = {
                            globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
                        },
                    }
                },
            })

        end,
    },

    {
        "williamboman/mason.nvim",
        dependencies = { "williamboman/mason-lspconfig.nvim" },

        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = language_servers,
                automatic_installation = true,
            })
        end,
    }
}
