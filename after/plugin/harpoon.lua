local harpoon_mark = require("harpoon.mark")
local harpoon_ui = require("harpoon.ui")

-- set leader 1-9 as harpoon quick nav bindings
local function set_keymap()
    for i = 1, 9, 1 do
        local keybind = string.format("<leader>%s", i)
        vim.keymap.set("n", keybind, function() harpoon_ui.nav_file(i) end, { desc = string.format("harpoon to %s", i) })
    end
    vim.keymap.set("n", "<leader>m", function() harpoon_mark.add_file() end, { desc = "Add buffer to harpoon" })
    vim.keymap.set("n", "<leader>fm", function() harpoon_ui.toggle_quick_menu() end, { desc = "Harpoon quick menu" })
end

set_keymap()
