local colorscheme = "gruvbox" -- Def: codemonkey
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end


-- vim.cmd "hi Normal guibg=None"
-- vim.cmd "hi VertSplit ctermbg=NONE guibg=NONE guifg=#5fafd7" -- codemonkey
vim.cmd "hi SignColumn guibg=NONE"

-- Setting diagnostic Icons for gruvbox
vim.api.nvim_set_hl(0, "DiagnosticSignError", { link = "DiagnosticError" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn",  { link = "DiagnosticWarn" })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo",  { link = "DiagnosticInfo" })
vim.api.nvim_set_hl(0, "DiagnosticSignHint",  { link = "DiagnosticHint" })

-- vim.cmd "hi CurrentWord ctermbg=7 guibg=7"
-- vim.cmd "hi CurrentWordTwins ctermbg=20 guibg=40"
-- vim.cmd "hi WinSeparator guibg=NONE"

local wo = vim.wo
wo.cursorline = true
local o = vim.opt

---- For window separator
vim.api.nvim_set_hl(0, "WinSeparator",  { link = "LineNr" })
-- o.fillchars:append "vert:▏"
-- o.fillchars:append "vertright:▏"
-- o.fillchars:append "vertleft:▏"
-- o.fillchars:append "horiz:―"
-- o.fillchars:append "horizup:―"
-- o.fillchars:append "horizdown:―"
-- o.fillchars:append "verthoriz:―"
-- 
-- -- For Nvim-tree
-- vim.cmd "hi NvimTreeCursorLine guibg=#212329"
-- vim.cmd "hi NvimTreeVertSplit guifg=#87D787" --guibg=#5fafd7"
