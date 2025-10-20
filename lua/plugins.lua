-- contains all plugins
return {
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        event = "VeryLazy",
        priority = 1000,
        config = function()
            require('tiny-inline-diagnostic').setup()
        end
    },
    { "nvim-telescope/telescope.nvim",      dependencies = { "nvim-lua/plenary.nvim" } },
    { "nvim-treesitter/nvim-treesitter",    build = ":TSUpdate" },
    { "williamboman/mason.nvim",            build = ":MasonUpdate" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/cmp-nvim-lsp-signature-help" },
    { "saadparwaiz1/cmp_luasnip" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-nvim-lua" },
    { 'rose-pine/neovim',                   name = 'rose-pine' },
    { "mbbill/undotree" },
    { "nvim-lualine/lualine.nvim" },
    { "nvim-tree/nvim-web-devicons" },
    { "tpope/vim-fugitive" },
    { "numToStr/Comment.nvim" },
    { "mfussenegger/nvim-dap" },
    { "mfussenegger/nvim-dap-python" },
    { "rcarriga/nvim-dap-ui" },
    { "lewis6991/gitsigns.nvim" },
    { "catppuccin/nvim",                    name = "catppuccin" },
    { "phaazon/hop.nvim" },
    { "ggandor/leap.nvim" },
    { "nvim-lua/plenary.nvim" },
    { "ThePrimeagen/harpoon" },
    { "nvim-lua/lsp-status.nvim" },
    { "nvim-neotest/nvim-nio" },
    { "L3MON4D3/LuaSnip",                   version = "1.*",                           build = "make install_jsregexp" },
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end,
    },
    {
        'oribarilan/lensline.nvim',
        tag = '2.0.0', -- or: branch = 'release/2.x' for latest non-breaking updates
        event = 'LspAttach',
        config = function()
            require("lensline").setup()
        end,
    }
}
