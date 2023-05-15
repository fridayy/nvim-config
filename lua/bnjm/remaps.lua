-- keybinding remaps
--local builtin = require("telescope.builtin")

vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<ESC>")

-- jump to buffer mid when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")


-- file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Ex File Explorer"})

-- write
vim.keymap.set("n", "<leader>w", vim.cmd.w, { desc = "Save"})

