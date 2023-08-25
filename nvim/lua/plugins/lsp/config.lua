local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

local status_ok, meson_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
    return
end

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    return
end


mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local servers = {"jsonls","lua_ls","pyright","clangd","ansiblels","sqlls","rust_analyzer","tsserver","jdtls","nimls", "gopls", "cssls"}
local meson_servers = {"ltex-ls","asm_lsp"}
meson_lspconfig.setup({
  ensure_installed = servers
})


for _, server in pairs(servers) do
    local opts = {
        on_attach = require("plugins.lsp.handlers").on_attach,
        capabilities = require("plugins.lsp.handlers").capabilities,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "plugins.lsp.settings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
    end
    lspconfig[server].setup(opts)
end

local status_ok, mason_tool_installer = pcall(require, "mason-tool-installer")
if not status_ok then
    vim.notify("Could not find mason-tool-installer")
    return
end

require('mason-tool-installer').setup {
    ensure_installed = meson_servers,
    auto_update = false,
    run_on_start = true,
    start_delay = 3000,
    debounce_hours = 5,
}
