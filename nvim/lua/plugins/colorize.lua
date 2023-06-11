local status_ok, _ = pcall(require, "colorizer")
if not status_ok then
    vim.notify("colorizer not found!")
    return
end

require 'colorizer'.setup({
  filetypes = {
    css = {names = true,},
    "html",
    "typescript",
    "lua",
  },
  user_default_options = {
    RGB = true,
    RRGGBB = true,
    RRGGBBAA = true,
    AARRGGBB = true,
    names = false,
    rgb_fn = true,
    hsl_fn = true,
    mode = "background",
    tailwind = true,
    sass = { enable = true, parsers = { "css" },},
  },
})
