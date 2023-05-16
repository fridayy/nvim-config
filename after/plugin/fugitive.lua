-- fugitive related mappings
vim.keymap.set("n", "<leader>gg", vim.cmd.Git, { desc = "git"})
vim.keymap.set("n", "<leader>gp", vim.cmd.GitPush, { desc = "git"})
