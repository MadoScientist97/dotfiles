local opts = {noremap = true, silent = true}
local term_opts = {silent = true}
-- Setting shorthand for setting keymaps
local keymap = vim.api.nvim_set_keymap

-- Remap Leader
keymap("","<Space>","<Nop>",opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Movement
keymap("n","<leader>h","<C-w>h",opts)
keymap("n","<leader>j","<C-w>j",opts)
keymap("n","<leader>k","<C-w>k",opts)
keymap("n","<leader>l","<C-w>l",opts)

-- Show Undotree TODO: Need to change it to its own plugin file.
keymap("n","<leader>u",":UndotreeShow<CR>",opts)

-- Vert-auto-30-70-split
keymap("n","<leader>pv",":wincmd v<CR> :Ex <bar> :vertical resize 30<CR>",opts)

-- Window Resize
keymap("n","<leader>+",":vertical resize +5<CR>",opts)
keymap("n","<leader>-",":vertical resize -5<CR>",opts)

-- Navigate Buffers
keymap("n","<S-l>",":bnext<CR>",opts)
keymap("n","<S-h>",":bprevious<CR>",opts)


-- Visual indent
keymap("v","<","<gv",opts)
keymap("v",">",">gv",opts)
keymap("x","<","<gv",opts)
keymap("x",">",">gv",opts)

-- Keep previous clipboard buffer when replacing some text
keymap("v", "p", '"_dP',opts)

-- Reorder lines up down
keymap("n","<S-j>",":m .+1<CR>==",opts)
keymap("n","<S-k>",":m .-2<CR>==",opts)

-- Reorder visual blocks up down
keymap("v","<S-j>",":m '>+1<CR>gv-gv",opts)
keymap("v","<S-k>",":m '<-2<CR>gv-gv",opts)
keymap("x","J",":m '>+1<CR>gv-gv",opts)
keymap("x","K",":m '<-2<CR>gv-gv",opts)

-- Buffer delete Shortcut
keymap("n","<S-b>",":Bdelete<CR>",opts)

-- Telescope Shortcut TODO: Need to change it to its own plugin file.
keymap("n","<leader>ps",":lua require('telescope.builtin').grep_string({search = vim.fn.input(\"Grep For > \")})<CR>",opts)

-- diffget
keymap("n","<leader>gJ",":diffget //3<CR>",{noremap = false, silent = true})
keymap("n","<leader>gf",":diffget //2<CR>",{noremap = false, silent = true})
keymap("n","<leader>gs",":G<CR>",{noremap = false, silent = true})

-- Clear Search Highlight
keymap("n","<Esc><Esc>", "<Esc>:nohl<CR><Esc>",opts)

-- Nerdtree Toggle
keymap("n","<leader>t",":NvimTreeToggle<CR>",opts)
keymap("v","<leader>t",":NvimTreeToggle<CR>",opts)

-- ToggleTerm
keymap("n","<leader>T",":ToggleTerm size=40 dir=~/ direction=float<CR>",opts)

-- Current Word Toggle
keymap("n","<leader>cc",":VimCurrentWordToggle<CR>",opts)
