vim.o.tabline = 4
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.opt.expandtab = true
vim.o.smarttab = true
vim.o.softtabstop = 4
vim.o.smartindent = true

vim.o.scrolloff = 15

vim.o.nu = true
vim.o.relativenumber = true

vim.g.autoformat = true

-- Taken from LazyVim
vim.opt.cursorline = true
vim.opt.confirm = true -- Confirm to save changes before exiting modified buffere
vim.opt.ignorecase = true -- Ignore case
vim.opt.expandtab = true

-- Undo stuff
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true
