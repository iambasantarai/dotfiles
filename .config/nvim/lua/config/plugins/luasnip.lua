local opts = { noremap = true, silent = true }

return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
		config = function()
			local ls = require("luasnip")
			local extras = require("luasnip.extras")
			local fmt = require("luasnip.extras.fmt").fmt
			local types = require("luasnip.util.types")

			require("luasnip.loaders.from_vscode").lazy_load()

			ls.config.set_config({
				history = true,

				updateevents = "TextChanged,TextChangedI",

				enable_autosnippets = true,

				ext_opts = {
					[types.choiceNode] = {
						active = {
							virt_text = { { " « ", "NonTest" } },
						},
					},
				},
			})

			vim.keymap.set({ "i", "s" }, "<C-j>", function()
				if ls.expand_or_jumpable() then
					ls.expand_or_jump()
				end
			end, opts)

			vim.keymap.set({ "i", "s" }, "<C-k>", function()
				if ls.jumpable(-1) then
					ls.jump(-1)
				end
			end, opts)

			vim.keymap.set("i", "<C-l>", function()
				if ls.choice_active() then
					ls.change_choice(1)
				end
			end, opts)

			vim.keymap.set(
				"i",
				"<C-u>",
				require("luasnip.extras.select_choice"),
				opts
			)

			-- SNIPPETS
			ls.add_snippets("text", {
				ls.snippet(
					"mit",
					fmt(
						[[
    MIT License

    Copyright (c) 2023 Basanta Rai

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
    ]],
						{}
					)
				),
			})

			local languages = {
				"javascript",
				"typescript",
				"javascriptreact",
				"typescriptreact",
			}
			for _, lang in ipairs(languages) do
				ls.add_snippets(lang, {
					ls.snippet(
						"log",
						fmt(
							[[
        console.log("::: {} start :::");
        console.log({});
        console.log("::: {} end :::");
        ]],
							{
								ls.insert_node(1),
								ls.insert_node(0),
								extras.rep(1),
							}
						)
					),
				})
			end
		end,
	},
}
