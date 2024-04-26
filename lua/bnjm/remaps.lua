-- keybinding remaps
--local builtin = require("telescope.builtin")
vim.o.termguicolor = true
vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<ESC>")

-- jump to buffer mid when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "<s-j>", "")
vim.keymap.set("n", "<s-h>", "")


-- file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Ex File Explorer"})

-- write
vim.keymap.set("n", "<leader>w", vim.cmd.w, { desc = "Save"})

-- buffer ops
vim.keymap.set("n", "<leader>b", vim.cmd.enew, { desc = "New buffer"})
vim.keymap.set("n", "<leader>x", vim.cmd.bd, { desc = "Close buffer"})

-- navigate in insert mode 
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- move lines up or down using alt + k / alt + j
vim.keymap.set("n", "<A-j>", ":m+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m-2<CR>==")
