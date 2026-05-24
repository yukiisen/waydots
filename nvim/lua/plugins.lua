require("mason").setup()
require("mason-lspconfig").setup({})
require("fzf-lua").setup({})

-- require("nvim-treesitter.configs").setup({
--     highlight = {
--         enable = true,
--         additional_vim_regex_highlighting = false,
--     },
-- })

require("blink.cmp").setup({
    keymap = {
        preset = "default",

        ['<CR>'] = { "select_and_accept", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
    },

    appearance = {
        nerd_font_variant = "mono",
    },

    completion = {
        documentation = {
            auto_show = true,
        },
    },

    sources = {
        default = { "lsp", "path", "buffer" },
    },
})

pcall(function()
    require("blink.cmp").build():wait(20000)
end)

require("mini.pairs").setup()

require("presence").setup({
    auto_update = true,
    neovim_image_text = "Hentai communist",
    main_image = "file",
})

require("smear_cursor").setup({
    stiffness = 0.8,
    trailing_stiffness = 0.5,
})
