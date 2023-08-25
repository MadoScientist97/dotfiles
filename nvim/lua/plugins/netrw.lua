Netrw_is_open = 0
function PnetrwToggle(some)
    if Netrw_is_open == 1 then
        local i = vim.fn.bufnr('$')
        while i >= 1 do
            if (vim.fn.getbufvar(i, "&filetype") == "netrw") then
                vim.cmd(":silent bdelete "..i)
            end
            i = i-1
        end
        Netrw_is_open = 0
    else
        vim.cmd(":silent Vexplore")
        Netrw_is_open = 1
    end
end
