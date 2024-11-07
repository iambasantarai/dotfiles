-- General Settings
vim.opt.termguicolors = true -- Enable 24-bit RGB colors
vim.o.fileencoding = "utf-8" -- Set file encoding to UTF-8
vim.o.mouse = "a" -- Enable mouse support
vim.o.clipboard = "unnamedplus" -- Use system clipboard

-- Line Numbers
vim.wo.number = true -- Enable absolute line numbers
vim.o.relativenumber = true -- Enable relative line numbers

-- Wrapping & Indentation
vim.o.wrap = false -- Disable line wrapping
vim.o.linebreak = true -- Wrap lines at word boundaries
vim.o.autoindent = true -- Enable automatic indentation
vim.o.smartindent = true -- Enable smart indentation
vim.o.shiftwidth = 4 -- Set indentation width
vim.o.tabstop = 4 -- Set tab width
vim.o.softtabstop = 4 -- Set number of spaces per tab
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.breakindent = true -- Enable break indentation

-- Scrolling & Cursor
vim.o.scrolloff = 4 -- Set number of lines to keep above/below the cursor
vim.o.sidescrolloff = 8 -- Set number of columns to keep at the sides of the cursor
vim.o.cursorline = false -- Disable cursor line highlight

-- Split Behavior
vim.o.splitbelow = false -- Horizontal splits open below
vim.o.splitright = false -- Vertical splits open to the left

-- Search Settings
vim.o.hlsearch = false -- Disable search highlighting
vim.o.incsearch = true -- Enable incremental search
vim.o.ignorecase = true -- Ignore case when searching
vim.o.smartcase = true -- Override ignorecase if search contains uppercase letters

-- UI Settings
vim.o.showmode = true -- Show current mode
vim.o.whichwrap = "bs<>[]hl" -- Allow cursor to wrap around with certain keys
vim.o.numberwidth = 4 -- Set number column width
vim.wo.signcolumn = "yes" -- Always show the sign column
vim.opt.colorcolumn = "80" -- Highlight column 80, helpful for keeping code lines within a set width
vim.opt.background = "dark" -- Set the background to dark mode
vim.o.cmdheight = 1 -- Set command line height to 1 line
vim.o.conceallevel = 0 -- Disable concealment

-- Tabline
vim.o.showtabline = 0 -- Hide tabline

-- Swap & Backup Settings
vim.o.swapfile = false -- Disable swap files
vim.o.backup = false -- Disable backup files
vim.o.writebackup = false -- Disable backup before overwriting files
vim.o.undofile = true -- Enable persistent undo
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Set undo directory

-- Completion Settings
vim.o.completeopt = "menuone,noselect" -- Set completion options

-- Performance
vim.o.updatetime = 250 -- Set update time for writing to swap file
vim.o.timeoutlen = 300 -- Set timeout length for key sequences

-- Miscellaneous Settings
vim.o.pumheight = 10 -- Set popup menu height
vim.opt.shortmess:append("c") -- Reduce messages for completion
vim.opt.iskeyword:append("-") -- Treat hyphen-separated words as one
vim.opt.formatoptions:remove({ "c", "r", "o" }) -- Remove specific auto-format options
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles") -- Remove unnecessary runtime paths

-- Backspace Settings
vim.o.backspace = "indent,eol,start" -- Configure backspace behavior

-- Netrw Settings (File Explorer)
vim.g.netrw_browse_split = 0 -- Open netrw in the current window
vim.g.netrw_banner = 0 -- Disable the netrw banner
vim.g.netrw_winsize = 25 -- Set netrw window size

-- Make neovim recognize files with the .http extension
vim.filetype.add({
	extension = {
		["http"] = "http",
	},
})
