local status_ok, dashboard = pcall(require, 'dashboard')
if not status_ok then
    vim.notify("Dashboard Not found!")
    return
end

dashboard.setup({
    theme = 'doom',
    config = {
        week_header = {
            enable = true,  --boolean use a week header
            concat = false,
            append = {
                " ",
                "⡆⣐⢕⢕⢕⢕⢕⢕⢕⢕⠅⢗⢕⢕⢕⢕⢕⢕⢕⠕⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕",
                "⢐⢕⢕⢕⢕⢕⣕⢕⢕⠕⠁⢕⢕⢕⢕⢕⢕⢕⢕⠅⡄⢕⢕⢕⢕⢕⢕⢕⢕⢕",
                "⢕⢕⢕⢕⢕⠅⢗⢕⠕⣠⠄⣗⢕⢕⠕⢕⢕⢕⠕⢠⣿⠐⢕⢕⢕⠑⢕⢕⠵⢕",
                "⢕⢕⢕⢕⠁⢜⠕⢁⣴⣿⡇⢓⢕⢵⢐⢕⢕⠕⢁⣾⢿⣧⠑⢕⢕⠄⢑⢕⠅⢕",
                "⢕⢕⠵⢁⠔⢁⣤⣤⣶⣶⣶⡐⣕⢽⠐⢕⠕⣡⣾⣶⣶⣶⣤⡁⢓⢕⠄⢑⢅⢑",
                "⠍⣧⠄⣶⣾⣿⣿⣿⣿⣿⣿⣷⣔⢕⢄⢡⣾⣿⣿⣿⣿⣿⣿⣿⣦⡑⢕⢤⠱⢐",
                "⢠⢕⠅⣾⣿⠋⢿⣿⣿⣿⠉⣿⣿⣷⣦⣶⣽⣿⣿⠈⣿⣿⣿⣿⠏⢹⣷⣷⡅⢐",
                "⣔⢕⢥⢻⣿⡀⠈⠛⠛⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⠛⠛⠁⠄⣼⣿⣿⡇⢔",
                "⢕⢕⢽⢸⢟⢟⢖⢖⢤⣶⡟⢻⣿⡿⠻⣿⣿⡟⢀⣿⣦⢤⢤⢔⢞⢿⢿⣿⠁⢕",
                "⢕⢕⠅⣐⢕⢕⢕⢕⢕⣿⣿⡄⠛⢀⣦⠈⠛⢁⣼⣿⢗⢕⢕⢕⢕⢕⢕⡏⣘⢕",
                "⢕⢕⠅⢓⣕⣕⣕⣕⣵⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣕⢕⢕⢕⢕⡵⢀⢕⢕",
                "⢑⢕⠃⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⢕⢕⢕",
                "⣆⢕⠄⢱⣄⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⢕⢕⠕⢁",
                "⣿⣦⡀⣿⣿⣷⣶⣬⣍⣛⣛⣛⡛⠿⠿⠿⠛⠛⢛⣛⣉⣭⣤⣂⢜⠕⢑⣡⣴⣿",
                " ",  --table append after time string line
                },
        },
        center = {
        {
            icon = ' ',
            desc = 'Find File',
            key = 'f',
            action = 'Telescope find_files',
            icon_hl = 'Title',
            key_hl = 'Number',
            desc_hl = 'String',
        },
        {
            icon = ' ',
            desc = 'Search Text',
            key = '/',
            action = 'Telescope live_grep',
            icon_hl = 'Title',
            key_hl = 'Number',
            desc_hl = 'String',
        },
        {
            icon = ' ',
            desc = 'Recent Files',
            key = 'r',
            action = 'Telescope oldfiles',
            icon_hl = 'Title',
            key_hl = 'Number',
            desc_hl = 'String',
        },
        {
            icon = ' ',
            desc = 'Config Dir',
            key = 'c',
            action = 'e ~/.config/nvim/',
            icon_hl = 'Title',
            key_hl = 'Number',
            desc_hl = 'String',
        },
        {
            icon = ' ',
            desc = 'Open Empty File',
            key = 'e',
            action = 'enew',
            icon_hl = 'Title',
            key_hl = 'Number',
            desc_hl = 'String',
        },
        {
            icon = ' ',
            desc = 'Vimwiki',
            key = 'v',
            action = 'VimwikiIndex',
            icon_hl = 'Title',
            key_hl = 'Number',
            desc_hl = 'String',
        },
        {
            icon = ' ',
            desc = 'Quit',
            key = 'q',
            action = 'q',
            icon_hl = 'Title',
            key_hl = 'Number',
            desc_hl = 'String',
        },
    },
    footer = {"There is no Spoon - Matrix"}
  }
})
