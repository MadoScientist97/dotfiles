-- All my sets
o = vim.opt
o.syntax = "on"
o.exrc = true
o.errorbells = false
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true
o.number = true
o.wrap = false
o.scrolloff = 8
o.termguicolors = true
o.swapfile = false
o.backup = false
o.undodir = "${HOME}/.vim/nobackup"
o.undofile = true
o.incsearch = true
o.hidden = true
o.ignorecase = true
o.relativenumber = false
o.showmode = false
o.signcolumn = "yes"
o.clipboard = "unnamedplus"
o.colorcolumn = "100"
o.completeopt = {"menuone", "noinsert", "noselect"}
o.sidescrolloff = 8
o.splitbelow = true
o.splitright = true
o.filetype.plugin = "on"

vim.cmd("highlight ColorColumn ctermbg=lightred")
-- CurrentWord bg colour
vim.cmd("hi CurrentWord ctermbg=240")
vim.cmd("hi CurrentWordTwins ctermbg=240")
