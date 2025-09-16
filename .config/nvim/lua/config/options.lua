-- General settings
vim.opt.termguicolors = true
vim.opt.fileencoding = "utf-8"
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.backspace = "indent,eol,start"
vim.opt.completeopt = "menuone,noselect"
vim.opt.shortmess:append("c")
vim.opt.iskeyword:append("-")
vim.opt.formatoptions:remove({ "c", "r", "o" })

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation & wrapping
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.wrap = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- UI
vim.opt.background = "dark"
vim.opt.colorcolumn = "80"
vim.opt.showmode = true
vim.opt.signcolumn = "yes"
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Swap & backup settings
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
