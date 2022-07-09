local lsp_installer_status_ok, lsp_installer = pcall(require,"lsp-installer")
if not lsp_installer_status_ok then
    return
end

lsp_installer.on_sever_ready(function(server)
    local opts = {
        on_attach = require("plugins.lsp.handlers").on_attach,
        capabilities = require("plugins.lsp.handlers").capabilities,
    }
    if server.name == "jsonls" then
        local jsonls_opts = require("plugins.lsp.settings.jsonls")
        opts = vim.tbl_deep_extend("force",jsonls_opts,opts)
    end

    if server.name == "sumneko_lua" then
        local sumneko_opts = require("plugins.lsp.settings.sumneko_lua")
        opts = vim.tbl_deep_extend("force",sumneko_opts,opts)
    end
    if server.name == "ansiblels" then
        local ansibleopts = require("plugins.lsp.settings.ansiblels")
        opts = vim.tbl_deep_extend("force",ansibleopts,opts)
    end
    if server.name == "tsserver" then
        local ansibleopts = require("plugins.lsp.settings.ansiblels")
        opts = vim.tbl_deep_extend("force",ansibleopts,opts)
    end
    server:setup(opts)
end)
