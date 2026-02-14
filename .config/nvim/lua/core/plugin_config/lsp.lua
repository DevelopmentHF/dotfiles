-- Keymaps per-buffer, whenever an LSP attaches
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = bufnr })
    vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { buffer = bufnr })
  end,
})

-- Capabilities for nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Server configs (new API)
vim.lsp.config("clangd", {
  capabilities = capabilities,
})

vim.lsp.config("rust_analyzer", {
  capabilities = capabilities,
})

vim.lsp.config("pylsp", {
  capabilities = capabilities,
})

vim.lsp.config("glsl_analyzer", {
  capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  settings = {
    Lua = {
      workspace = {
        checkThirdParty = false,
        library = {
          "${3rd}/love2d/library",
        },
      },
      telemetry = { enable = false },
    },
  },
})

-- Enable servers (starts them / autostarts)
vim.lsp.enable({ "clangd", "rust_analyzer", "pylsp", "lua_ls", "glsl_analyzer"})
