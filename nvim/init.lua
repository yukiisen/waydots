vim.pack.add({
    -- { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "v0.10.0" },

    { src = "https://github.com/ibhagwan/fzf-lua" },

    { src = "https://github.com/neovim/nvim-lspconfig" },

    { src = "https://github.com/mason-org/mason.nvim" },

    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },

    { src = "https://github.com/Saghen/blink.cmp" },

    { src = "https://github.com/Saghen/blink.lib" },

    { src = "https://github.com/echasnovski/mini.pairs" },

    { src = "https://github.com/andweeb/presence.nvim" },

    { src = "https://github.com/sphamba/smear-cursor.nvim" },

    { src = "https://github.com/AlphaTechnolog/pywal.nvim" },
})

require("config")
require("plugins")
require("lsp")
