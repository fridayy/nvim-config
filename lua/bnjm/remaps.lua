-- keybinding remaps
--local builtin = require("telescope.builtin")
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

-- terminal mode remaps
-- Map <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], {noremap = true})

-- Easier window navigation from terminal
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-W>h]], {noremap = true})
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-W>j]], {noremap = true})
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-W>k]], {noremap = true})
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-W>l]], {noremap = true})

-- Terminal in horizontal split
vim.keymap.set('n', '<leader>ts', ':split | terminal<CR>', { desc = 'Terminal in horizontal split' })
-- Terminal in vertical split
vim.keymap.set('n', '<leader>tv', ':vsplit | terminal<CR>', { desc = 'Terminal in vertical split' })

-- lsp
vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format() end)
vim.keymap.set("n", "<leader>lR", function() vim.lsp.buf.rename() end)
vim.keymap.set("n", "<leader>lh", function() vim.lsp.buf.hover() end)
vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end)
-- -- idea like signature help
vim.keymap.set("i", "<C-p>", function () vim.lsp.buf.signature_help() end)
vim.keymap.set("n", "<C-p>", function () vim.lsp.buf.signature_help() end)
-- -- goto impl
vim.keymap.set("n", "<leader>ldi", function () vim.lsp.buf.implementation() end)
-- -- goto interface definition
vim.keymap.set("n", "<leader>ldo", function() vim.lsp.buf.definition() end)
