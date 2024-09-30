-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- disable the spacebar key's default behavior in normal and visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- general keymaps
vim.keymap.set("i", "jk", "<ESC>")

-- move selected
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search and stay in center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- save and quit
vim.keymap.set("n", "<Leader>w", ":w<CR>")
vim.keymap.set("n", "<Leader>q", ":wq<CR>")

-- open netrw file explorer
vim.keymap.set(
	"n",
	"<Leader>fe",
	":wincmd v<bar> :Ex <bar> :vertical resize 30<CR>"
)

-- splits navigation
vim.keymap.set("n", "<Leader>h", ":wincmd h<CR>")
vim.keymap.set("n", "<Leader>j", ":wincmd j<CR>")
vim.keymap.set("n", "<Leader>k", ":wincmd k<CR>")
vim.keymap.set("n", "<Leader>l", ":wincmd l<CR>")

-- close focused split
vim.keymap.set("n", "<Leader>cs", ":close<CR>")

-- make split windows equal width & height
vim.keymap.set("n", "<Leader>es", "<C-w>=")

-- search and replace
vim.keymap.set(
	"n",
	"<Leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)

-- create an executable file
vim.keymap.set("n", "<Leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- toggle line wrapping
-- vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>")
