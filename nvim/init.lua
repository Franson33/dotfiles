-- lazy bootstrap
require("bootstrap")

require("lazy").setup("plugins")
require("options")

vim.cmd("colorscheme oxocarbon")

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

vim.wo.number = true
vim.wo.relativenumber = true
