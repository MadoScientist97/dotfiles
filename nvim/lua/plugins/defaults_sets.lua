--[[vim.cmd [[
        autocmd VimEnter * hi normal ctermbg=NONE
--]]

vim.cmd [[
    if executable('rg')
        let g:rg_derive_root='true'
    endif
]]

--[[ vim.cmd [[
    augroup nvimtree_open
        autocmd!
        autocmd VimEnter * NvimTreeOpen | wincmd p
    augroup END
]] --]]

-- lets
vim.g['python_host_prog'] = '/bin/python3'
vim.g['grubbox_italic'] = 1
vim.g['gruvbox_transparent_bg'] = 1
vim.g['netrw_browse_split'] = 4
vim.g['netrw_banner'] = 0
vim.g['netrw_altv'] = 1
vim.g['netrw_winsize'] = 20
vim.g['netrw_liststyle'] = 3
vim.g['vimwiki_global_ext'] = 0
vim.cmd "let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md', 'ext2syntax': {'.md':'markdown','.markd<bar>own':'markdown','mdown':'markdown','mdk':'markdown'}}]"
vim.g['vim_current_word#excluded_filetypes'] = {'md'}
vim.g['vim_current_word#enabled'] = 0
vim.g['cmdheight'] = 0
vim.g['live_previewer'] = 'zathura'

-- Simplenote Set filetype

vim.g['SimplenoteFiletype'] = 'markdown'

-- tmux stuff
vim.g['tmux_navigator_disable_when_zoomed'] = 1
