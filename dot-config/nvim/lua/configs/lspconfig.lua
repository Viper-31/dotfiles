require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "pyright",
  "rust_analyzer",
  "gopls",
  "clangd",
  "jsonls",
  "yamlls",
  "tailwindcss",
  "marksman",
  "taplo",
  "svelte",
  "fish_lsp",
  "sqls",
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
