require'hop'.setup()
vim.keymap.set("n", "<leader>h", function() 
    vim.cmd(":HopWord")
end)
