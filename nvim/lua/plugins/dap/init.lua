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

require("plugins.dap.config")
-- require("plugins.dap.handlers")
