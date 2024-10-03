-- Set Leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in normal and visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local opts = { noremap = true, silent = true }

-- General keymaps
vim.keymap.set("i", "jk", "<ESC>", opts) -- Exit insert mode by typing "jk"

-- Save and quit keymaps
vim.keymap.set("n", "<Leader>w", "<cmd>w<CR>", opts) -- Save the file
vim.keymap.set("n", "<Leader>q", "<cmd>wq<CR>", opts) -- Save and quit

-- Open netrw file explorer in vertical split with a width of 30
vim.keymap.set(
	"n",
	"<Leader>fe",
	"<cmd>wincmd v<bar>Ex<bar>vertical resize 30<CR>",
	opts
)

-- Navigation between split windows
vim.keymap.set("n", "<Leader>h", "<cmd>wincmd h<CR>", opts) -- Move to the left split
vim.keymap.set("n", "<Leader>j", "<cmd>wincmd j<CR>", opts) -- Move to the bottom split
vim.keymap.set("n", "<Leader>k", "<cmd>wincmd k<CR>", opts) -- Move to the top split
vim.keymap.set("n", "<Leader>l", "<cmd>wincmd l<CR>", opts) -- Move to the right split

-- Move selected text up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts) -- Move selected line(s) down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts) -- Move selected line(s) up

-- Join lines without moving the cursor
vim.keymap.set("n", "J", "mzJ`z", opts)

-- Scroll half-page and keep the cursor centered vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts) -- Scroll down and center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts) -- Scroll up and center cursor

-- Move to the next search result and keep the cursor centered
vim.keymap.set("n", "n", "nzzzv", opts) -- Move to the next occurrence of search and center
vim.keymap.set("n", "N", "Nzzzv", opts) -- Move to the previous occurrence of search and center

-- Paste without overwriting the clipboard in visual mode
vim.keymap.set("x", "<Leader>p", [["_dP]], opts)

-- Delete the single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Window management
vim.keymap.set("n", "<Leader>vs", "<C-w>v", opts) -- Split window vertically
vim.keymap.set("n", "<Leader>hs", "<C-w>s", opts) -- Split window horizontally
vim.keymap.set("n", "<Leader>cs", "<cmd>close<CR>", opts) -- Close the current split window
vim.keymap.set("n", "<Leader>es", "<C-w>=", opts) -- Make all split windows equal size

-- Search and replace the word under the cursor globally with confirmation
vim.keymap.set(
	"n",
	"<Leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)

-- Make the current file executable
vim.keymap.set("n", "<Leader>x", "<cmd>!chmod +x %<CR>")

-- Resize splits with arrow keys
-- These mappings allow resizing of split windows using the arrow keys for convenient window management.
vim.keymap.set("n", "<Up>", "<cmd>resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", "<cmd>resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", "<cmd>vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", "<cmd>vertical resize +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<Leader>nb", "<cmd>bnext<CR>", opts) -- Move to the next buffer
vim.keymap.set("n", "<Leader>pb", "<cmd>bprevious<CR>", opts) -- Move to the previous buffer
vim.keymap.set("n", "<Leader>cb", "<cmd>Bdelete!<CR>", opts) -- Close the current buffer
vim.keymap.set("n", "<Leader>ob", "<cmd>enew<CR>", opts) -- Open a new empty buffer

-- Tabs
vim.keymap.set("n", "<Leader>ot", "<cmd>tabnew<CR>", opts) -- Open a new tab
vim.keymap.set("n", "<Leader>ct", "<cmd>tabclose<CR>", opts) -- Close the current tab
vim.keymap.set("n", "<Leader>nt", "<cmd>tabn<CR>", opts) -- Move to the next tab
vim.keymap.set("n", "<Leader>pt", "<cmd>tabp<CR>", opts) -- Move to the previous tab
