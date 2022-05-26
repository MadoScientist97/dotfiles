local status_ok, TSconfigs = pcall(require,"nvim-treesitter.configs")
if not status_ok then
    return
end

TSconfigs.setup {
    ensure_installed = { "lua", "python", "c", "cpp", "java", "typescript", "go", "rust", "scala", "cmake", "ninja", "json", "bash" },
    sync_install = false,
    ignore_install = { "" },
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = true,
    },
    indent  = {enable = true, disable = {"yaml"} },
    autopairs  = {
        enable = true,
    },
    rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    }
}
