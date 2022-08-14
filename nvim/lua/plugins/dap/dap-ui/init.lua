local status_ok, _ = pcall(require, "dapui")
if not status_ok then
  print "could not load dap-install"
  return
end

require("plugins.dap.dap-ui.config")
require("plugins.dap.dap-ui.handlers")
