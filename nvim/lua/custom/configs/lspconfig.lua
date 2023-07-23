local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local navic = require("nvim-navic")
local servers = {"html", "cssls", "tailwindcss", "tsserver", "emmet_language_server", "cssmodules_ls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  on_attach = function (client, bufnr)
    navic.attach(client, bufnr)
  end
}

