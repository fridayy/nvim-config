require('mason').setup({
    -- registries = {
    --     "github:robertoaloi/mason-registry@main",
    -- },
})

require('mason-lspconfig').setup({
    ensure_installed = {
        -- Replace these with whatever servers you want to install
    }
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format() end, keymap_opts(bufnr, "Format"))
    vim.keymap.set("n", "<leader>lR", function() vim.lsp.buf.rename() end, keymap_opts(bufnr, "Rename"))
    vim.keymap.set("n", "<leader>lh", function() vim.lsp.buf.hover() end, keymap_opts(bufnr, "Hover"))
    vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, keymap_opts(bufnr, "Code Action"))
    -- idea like signature help
    vim.keymap.set("i", "<C-p>", function () vim.lsp.buf.signature_help() end, keymap_opts(bufnr, "Signature help"))
    vim.keymap.set("n", "<C-p>", function () vim.lsp.buf.signature_help() end, keymap_opts(bufnr, "Signature help"))
    -- goto impl
    vim.keymap.set("n", "<leader>ldi", function () vim.lsp.buf.implementation() end, keymap_opts(bufnr, "Goto implementation"))
end

local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            on_attach = lsp_attach,
            capabilities = lsp_capabilities,
            root_dir = function() return vim.fn.getcwd() end
        })
    end,
})

function keymap_opts(bufnr, desc)
    return { buffer = bufnr, desc = desc }
end
