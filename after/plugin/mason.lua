require('mason').setup()

require('mason-lspconfig').setup({
    ensure_installed = {
        -- Replace these with whatever servers you want to install
    }
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format() end, keymap_opts(bufnr, "Format"))
    vim.keymap.set("n", "<leader>ld", function() vim.lsp.buf.definition() end, keymap_opts(bufnr, "Goto Defintion"))
end

local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            on_attach = lsp_attach,
            capabilities = lsp_capabilities,
        })
    end,
})

function keymap_opts(bufnr, desc)
    return { buffer = bufnr, desc = desc }
end