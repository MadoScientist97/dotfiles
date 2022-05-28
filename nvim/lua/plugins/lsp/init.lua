local status_lsp_ok, _  = pcall(require,"lspconfig")
if not status_lsp_ok then
    print "could not load LSP configs"
    return
end

require("plugins.lsp.config")
require("plugins.lsp.handlers").setup()
-- require("plugins.lsp.null-ls")
