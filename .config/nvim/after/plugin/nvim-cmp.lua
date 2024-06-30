local cmp = require("cmp")
local luasnip = require("luasnip")
local cmp_select = { behavior = cmp.ConfirmBehavior.Select }

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    completion = {
        completeopt = "menu,menuone,preview,noselect"
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
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    })
})
