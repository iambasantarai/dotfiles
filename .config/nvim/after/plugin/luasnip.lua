local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

local types = require("luasnip.util.types")

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
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-k>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })

vim.keymap.set("i", "<c-l>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end)

vim.keymap.set("i", "<c-u>", require("luasnip.extras.select_choice"))

-- SNIPPETS
-- MIT License
ls.add_snippets("text", {
	s(
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

-- js/ts log
local languages = { "javascript", "typescript" }

for _, lang in ipairs(languages) do
	ls.add_snippets(lang, {
		s(
			"log",
			fmt(
				[[
        console.log("::: {} :::");
        console.log({});
        console.log("::: {} :::");
        ]],
				{
					i(1),
					i(0),
					rep(1),
				}
			)
		),
	})
end

ls.add_snippets("c", {
	s(
		"log",
		fmt(
			[[
        printf("\n=== uwu ===\n");
        printf({});
        printf("\n=== uwu ===\n");
        ]],
			{
				i(0),
			}
		)
	),
})
