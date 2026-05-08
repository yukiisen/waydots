local capabilities = vim.lsp.protocol.make_client_capabilities()

pcall(function()
    capabilities = require("blink.cmp").get_lsp_capabilities()
end)

local lsp = vim.lsp

lsp.config("zls", {
    cmd = { "zls" },
    filetypes = { "zig" },
    on_attach = function () end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "zig",
    callback = function()
        vim.lsp.enable("zls")
    end,
})

lsp.config("rust-analyzer", {
    cmd = { vim.fn.trim( vim.fn.system("rustup which rust-analyzer") ) },
    filetypes = { "rust" },
    on_attach = function () end,
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                allFeatures = true,
            },
            checkOnSave = {
                command = "clippy"
            },
        }
    }
})

lsp.config("*", {
    capabilities = capabilities
})
