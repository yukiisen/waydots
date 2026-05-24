vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Q", "q", {})
vim.keymap.set('n', 'tt', '<Cmd>tabnew<CR>', { noremap = true, silent = true });

vim.keymap.set('n', 'm', function()
	vim.diagnostic.open_float(nil, { focus = false, border = "rounded" });
end, { noremap = true, silent = true });

vim.diagnostic.config({
    virtual_text = {
        prefix = '●',
        spacing = 2,
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

vim.cmd.colorscheme("pywal");

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

vim.o.undofile = true

vim.o.scrolloff = 10

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("YukiLSPCfg", {}),
    callback = function (ev)
        local opts = { buffer = ev.buf };
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts);
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts);
    end
})

local fzf = require("fzf-lua")

vim.keymap.set("n", "f", fzf.files, { silent = true })
vim.keymap.set("n", "gf", fzf.git_files, { silent = true })

vim.keymap.set("n", "Fg", fzf.live_grep, { silent = true })
vim.keymap.set("n", "Fb", fzf.buffers, { silent = true })
