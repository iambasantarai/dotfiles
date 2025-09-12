-- Set leader key to space
vim.g.mapleader = " "

-- Disable the spacebar key's default behavior in normal and visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- General keymaps
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>w", "<cmd>w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>q", "<cmd>wq<CR>", { noremap = true, silent = true })

-- Open netrw file explorer in vertical split with a width of 30
vim.keymap.set("n", "<Leader>fe", "<cmd>wincmd v<bar>Ex<bar>vertical resize 30<CR>", { noremap = true, silent = true })

-- Move selected text up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { noremap = true, silent = true })

-- Join lines without moving the cursor
vim.keymap.set("n", "J", "mzJ`z", { noremap = true, silent = true })

-- Scroll half-page and keep the cursor centered vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Move to the next search result and keep the cursor centered
vim.keymap.set("n", "n", "nzzzv", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, silent = true })

-- Paste without overwriting the clipboard in visual mode
vim.keymap.set("x", "<Leader>p", [["_dP]], { noremap = true, silent = true })


-- Delete the single character without copying into register
vim.keymap.set("n", "x", '"_x', { noremap = true, silent = true })

-- Make current file executable
vim.keymap.set("n", "<Leader>x", "<cmd>!chmod +x %<CR>", { noremap = true })

-- Navigate between split windows
vim.keymap.set("n", "<Leader>h", "<cmd>wincmd h<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>j", "<cmd>wincmd j<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>k", "<cmd>wincmd k<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>l", "<cmd>wincmd l<CR>", { noremap = true, silent = true })

-- Split management
vim.keymap.set("n", "<Leader>vs", "<C-w>v", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>hs", "<C-w>s", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>cs", "<cmd>close<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>es", "<C-w>=", { noremap = true, silent = true })

-- Resize splits with arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { noremap = true, silent = true })

-- Buffers
vim.keymap.set("n", "<Leader>nb", "<cmd>bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>pb", "<cmd>bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>cb", "<cmd>Bdelete!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ob", "<cmd>enew<CR>", { noremap = true, silent = true })

-- Tabs
vim.keymap.set("n", "<Leader>ot", "<cmd>tabnew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ct", "<cmd>tabclose<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>nt", "<cmd>tabn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>pt", "<cmd>tabp<CR>", { noremap = true, silent = true })

-- Search and replace the word under the cursor globally with confirmation
vim.keymap.set(
	"n",
	"<Leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ noremap = true }
)
