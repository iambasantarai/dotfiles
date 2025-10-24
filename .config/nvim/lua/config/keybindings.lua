local opts = { noremap = true, silent = true }

-- General keymaps
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("n", "<Leader>w", "<cmd>w<CR>", opts)
vim.keymap.set("n", "<Leader>q", "<cmd>wq<CR>", opts)

-- Open netrw file explorer in vertical split with a width of 30
vim.keymap.set(
	"n",
	"<Leader>fe",
	"<cmd>wincmd v<bar>Ex<bar>vertical resize 30<CR>",
	opts
)
vim.keymap.set("n", "<leader>ff", ":find ", { noremap = true })

-- Move selected text up and down in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)

-- Join lines without moving the cursor
vim.keymap.set("n", "J", "mzJ`z", opts)

-- Scroll half-page and keep the cursor centered vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Move to the next search result and keep the cursor centered
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Paste without overwriting the clipboard in visual mode
vim.keymap.set("x", "<Leader>p", [["_dP]], opts)

-- Delete the single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Navigate between split windows
vim.keymap.set("n", "<Leader>h", "<cmd>wincmd h<CR>", opts)
vim.keymap.set("n", "<Leader>j", "<cmd>wincmd j<CR>", opts)
vim.keymap.set("n", "<Leader>k", "<cmd>wincmd k<CR>", opts)
vim.keymap.set("n", "<Leader>l", "<cmd>wincmd l<CR>", opts)

-- Split management
vim.keymap.set("n", "<Leader>vs", "<C-w>v", opts)
vim.keymap.set("n", "<Leader>cs", "<cmd>close<CR>", opts)
vim.keymap.set("n", "<Leader>es", "<C-w>=", opts)

-- Resize splits with arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<Leader>nb", "<cmd>bnext<CR>", opts)
vim.keymap.set("n", "<Leader>pb", "<cmd>bprevious<CR>", opts)
vim.keymap.set("n", "<Leader>cb", "<cmd>Bdelete!<CR>", opts)
vim.keymap.set("n", "<Leader>ob", "<cmd>enew<CR>", opts)

-- Tabs
vim.keymap.set("n", "<Leader>ot", "<cmd>tabnew<CR>", opts)
vim.keymap.set("n", "<Leader>ct", "<cmd>tabclose<CR>", opts)
vim.keymap.set("n", "<Leader>nt", "<cmd>tabn<CR>", opts)
vim.keymap.set("n", "<Leader>pt", "<cmd>tabp<CR>", opts)

-- Disable the spacebar key's default behavior in normal and visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Make current file executable
vim.keymap.set("n", "<Leader>x", "<cmd>!chmod +x %<CR>", { noremap = true })

-- Search and replace the word under the cursor globally with confirmation
vim.keymap.set(
	"n",
	"<Leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ noremap = true }
)
