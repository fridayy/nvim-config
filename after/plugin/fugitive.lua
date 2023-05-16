-- fugitive related mappings
vim.keymap.set("n", "<leader>gg", vim.cmd.Git, { desc = "git" })
vim.keymap.set("n", "<leader>gp", function() vim.cmd("Git push") end, { desc = "git push" })
