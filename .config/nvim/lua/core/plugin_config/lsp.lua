require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "clangd"},
}

-- mason lsp key bindings
local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
end

-- link autocomplete engine to our lsp 
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").clangd.setup {
	capabilities = capabilities,
	on_attach = on_attach
}


