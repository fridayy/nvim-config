-- telescope keybindings
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "Find files"})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find grep"})
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers"})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find helptags"})
vim.keymap.set("n", "<leader>fd", builtin.lsp_document_symbols, { desc = "Find document definitions"})
