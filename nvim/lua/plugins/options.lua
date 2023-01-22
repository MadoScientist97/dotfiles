-- All my sets

local o = vim.opt
local wo = vim.wo
local bo = vim.bo
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
o.undodir = os.getenv("HOME") .. '/.local/var/vim/nobackup'
o.undofile = true
o.incsearch = true
o.hidden = true
o.ignorecase = true
o.relativenumber = true
o.showmode = false
o.signcolumn = "yes"
o.clipboard = "unnamedplus"
o.colorcolumn = "100"
o.completeopt = {"menuone", "noinsert", "noselect"}
o.sidescrolloff = 8
o.splitbelow = true
o.splitright = true
o.filetype.plugin = "on"
o.cmdheight = 0
o.laststatus = 3
-- vim.cmd("highlight ColorColumn ctermbg=lightred")
-- CurrentWord bg colour for a future version
