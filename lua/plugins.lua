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
    { url = "https://codeberg.org/andyg/leap.nvim" },
    { "nvim-lua/plenary.nvim" },
    { "ThePrimeagen/harpoon" },
    { "nvim-lua/lsp-status.nvim" },
    { "nvim-neotest/nvim-nio" },
    { "Shatur/neovim-ayu" },
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
    },
    {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 'rafamadriz/friendly-snippets' },

  -- use a release tag to download pre-built binaries
  version = '1.*',
  -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  -- build = 'cargo build --release',
  -- If you use nix, you can build from source using latest nightly rust with:
  -- build = 'nix run .#build-plugin',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = {
        preset = 'default',
          ['<S-Tab>'] = { 'select_prev', 'fallback' },
          ['<Tab>'] = { 'select_next', 'fallback' },
          ['<CR>'] = { 'accept', 'fallback' },
    },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    -- (Default) Only show the documentation popup when manually triggered
    completion = { documentation = { auto_show = true } },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
}
