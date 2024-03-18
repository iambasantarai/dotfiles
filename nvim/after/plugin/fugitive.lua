vim.keymap.set("n", "<Leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<Leader>gl", ":diffget // 3<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gj", ":diffget // 2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gu", ":diffupdate<CR>", { noremap = true, silent = true })
