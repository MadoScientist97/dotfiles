local status_ok, _ = pcall(require, "colorizer")
if not status_ok then
    vim.notify("colorizer not found!")
    return
end

require 'colorizer'.setup()
