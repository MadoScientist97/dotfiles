local status_ok, staline = pcall(require, "staline")
if not status_ok then
  return
end

local percentage = function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  local chars = {
    "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██"
  }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  -- For the percentage Number
  local perc = line_ratio * 100
  perc = math.ceil(line_ratio)
  perc = line_ratio * 100
  local perc_str = tostring(math.ceil(perc))
  return perc_str .. "%% " .. chars[index]
end

local time = function()
  return os.date("%a │ %H:%M %x")
end
local my_colors = {n = "#9CCFD8", i = "#3E8FB0", c = "#286983", v = "#56959F"}
staline.setup {
  sections = {
    left = {
      'mode', '│', {'StalineBranch', 'branch'}
      -- branch,
    },
    mid = {{'StalineName', 'file_name'}},
    right = {'-lsp', '│', time, ' │', percentage}
  },
  defaults = {
    true_colors = true, -- LSP highlighing
    font_active = "none",
    branch_symbol = " ", -- Change the branch symbol
    mod_symbol = "  " -- Change the modified symbol
  },
  mode_icons = {
    ['n'] = 'NORMAL',
    ['no'] = 'NORMAL',
    ['nov'] = 'NORMAL',
    ['noV'] = 'NORMAL',
    ['niI'] = 'NORMAL',
    ['niR'] = 'NORMAL',
    ['niV'] = 'NORMAL',
    ['i'] = 'INSERT',
    ['ic'] = 'INSERT',
    ['ix'] = 'INSERT',
    ['s'] = 'INSERT',
    ['S'] = 'INSERT',
    ['v'] = 'VISUAL',
    ['V'] = 'VISUAL',
    [''] = 'VISUAL',
    ['r'] = 'REPLACE',
    ['r?'] = 'REPLACE',
    ['R'] = 'REPLACE',
    ['c'] = 'COMMAND',
    ['t'] = 'TERMINAL'
  },
  mode_colors = my_colors, -- Change mode colors
  special_table = {
    NvimTree = {'File Explorer', ' '},
    packer = {'Packer', ' '},
    TelescopePrompt = {'Telescope', ' '}
  },
  lsp_symbols = {Error = " ", Info = " ", Warn = " ", Hint = " "}
}
vim.cmd [[hi StalineBranch guifg=#C4A7E7]]
vim.cmd [[hi StalineName guifg=#EBBCBA]]
