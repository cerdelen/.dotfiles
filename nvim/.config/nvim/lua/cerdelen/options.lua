-- no difference between normal cursor and insert cursor
vim.opt.guicursor = ""

-- this combination of number and relative number
-- makes line number be indented in comparison to relative line numbers
vim.opt.nu  = true
vim.opt.relativenumber  = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- how man lines on the top/bottom are shown from the current line
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- column just to not have too long lines
vim.opt.colorcolumn = "80"
