vim.keymap.set("n", "<Leader>gs", vim.cmd.Git)
vim.keymap.set(
	"n",
	"<Leader>mc",
	":Gvdiffsplit!<CR>",
	{ noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<Leader>gl",
	":diffget //3<CR>",
	{ noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<Leader>gh",
	":diffget //2<CR>",
	{ noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<Leader>gu",
	":diffupdate<CR>",
	{ noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<Leader>bw",
	":Git blame<CR>",
	{ noremap = true, silent = true }
)
