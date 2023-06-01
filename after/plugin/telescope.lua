-- telescope keybindings
local builtin = require("telescope.builtin")
local themes = require("telescope.themes")
local actions = require("telescope.actions")
-- file stuff
vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "Find files"})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find grep"})
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers"})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find helptags"})
-- lsp stuff
vim.keymap.set("n", "<leader>ldd", builtin.lsp_definitions, { desc = "Find definitions"})
vim.keymap.set("n", "<leader>ldD", builtin.diagnostics, { desc = "Diagnostics"})
vim.keymap.set("n", "<leader>ldt", builtin.lsp_type_definitions, { desc = "Find type definitions"})
vim.keymap.set("n", "<leader>lrr", builtin.lsp_references, { desc = "Find references"})
vim.keymap.set("n", "<leader>lri", builtin.lsp_incoming_calls, { desc = "Find incoming calls"})
vim.keymap.set("n", "<leader>lro", builtin.lsp_outgoing_calls, { desc = "Find incoming calls"})

-- git stuff
vim.keymap.set("n", "<leader>gb", function() builtin.git_branches(themes.get_dropdown()) end, { desc = "Git branches"})
vim.keymap.set("n", "<leader>gh", builtin.git_commits, { desc = "Git history"})
vim.keymap.set("n", "<leader>gs", builtin.git_stash, { desc = "Git stash"})

require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-Down>"] = actions.cycle_history_next,
        ["<C-Up>"] = actions.cycle_history_prev,
      },
    },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
    color_devicons = true,
  }
}
