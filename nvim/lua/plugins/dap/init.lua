local status_dap_ok, _  = pcall(require,"dap")
if not status_dap_ok then
    print "could not load DAP module"
    return
end
local status_dap_ui_ok, _  = pcall(require,"dapui")
if not status_dap_ui_ok then
    print "could not load DAP module"
    return
end

require("plugins.dap.dap")

-- Dap Specific Keymaps
local opts = {noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap
keymap( "n", "<leader>db", ":DapToggleBreakpoint<CR>", opts)
keymap( "n", "<leader>dn", ":DapContinue<CR>", opts)
keymap( "n", "<leader>de", ":DapTerminate<CR>", opts)
keymap( "n", "<leader>di", ":DapStepInto<CR>", opts)
keymap( "n", "<leader>do", ":DapStepOut<CR>", opts)
keymap( "n", "<leader>dv", ":DapStepOver<CR>", opts)
keymap( "n", "<leader>df", ':DapRestartFrame<CR>', opts)
keymap( "n", "<leader>dr", ':DapToggleRepl<CR>', opts)


-- require("plugins.dap.handlers")
