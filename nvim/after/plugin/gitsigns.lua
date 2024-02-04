local gitsigns = require("gitsigns")

gitsigns.setup()

vim.keymap.set("n", "<Leader>gp", ":Gitsigns preview_hunk<CR>", {})
