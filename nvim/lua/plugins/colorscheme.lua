local colorscheme = "codemonkey"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end


-- vim.cmd "hi Normal ctermbg=NONE ctermfg=NONE guifg=NONE guibg=NONE"
vim.cmd "hi VertSplit ctermbg=NONE guibg=NONE guifg=#5fafd7"
vim.cmd "hi CurrentWord ctermbg=7 guibg=7"
vim.cmd "hi CurrentWordTwins ctermbg=20 guibg=40"
vim.cmd "hi WinSeparator guibg=NONE"
wo = vim.wo
wo.cursorline = true
o = vim.opt
-- For window separator
vim.cmd "hi WinSeparator guifg=#5fafd7"
o.fillchars:append "vert:▏"
o.fillchars:append "vertright:▏"
o.fillchars:append "vertleft:▏"
o.fillchars:append "horiz:―"
o.fillchars:append "horizup:―"
o.fillchars:append "horizdown:―"
-- For Nvim-tree
vim.cmd "hi NvimTreeCursorLine guibg=#212329"
vim.cmd "hi NvimTreeVertSplit guifg=#87D787" --guibg=#5fafd7"
