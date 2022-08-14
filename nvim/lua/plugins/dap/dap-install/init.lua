local dapin_status_ok, _ = pcall(require, "dap-install")

if not dapin_status_ok then
  print "could not load dap-install"
  return
end

require('plugins.dap.dap-install.config')
require('plugins.dap.dap-install.handlers')
