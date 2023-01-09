local ok, lspconfig = pcall(require, "lspconfig")

if not ok then
  vim.notify("lspconfig module not found", vim.log.levels.ERROR)
  return
end

local ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")

if not ok then
  vim.notify("cmp_nvim_lsp module not found", vim.log.levels.ERROR)
  return
end

local ok, typescript = pcall(require, "typescript")

if not ok then
  vim.notify("typescript module not found", vim.log.levels.ERROR)
  return
end

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<cr>", opts)
  vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
  vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<cr>", opts)
  vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
  vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
  vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<cr>", opts)
  vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<cr>", opts)

  vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
  vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<cr>", opts)
  vim.keymap.set("n", "<leader>wl", "<cmd>Lspsaga show_workspace_diagnostics<cr>", opts)
  vim.keymap.set("n", "<leader>ncd", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
  vim.keymap.set("n", "<leader>pcd", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)

  vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
  vim.keymap.set("n", "<leader>sh", "<cmd>Lspsaga signature_help<cr>", opts)
  vim.keymap.set("n", "<leader>wa", "<cmd>Lspsaga add_workspace_folder<cr>", opts)
  vim.keymap.set("n", "<leader>wr", "<cmd>Lspsaga remove_workspace_folder<cr>", opts)

  if client.name == "tsserver" then
    vim.keymap.set("n", "<leader>rf", "<cmd>TypescriptRenameFile<cr>", opts)
  end
end

local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["tailwindcss"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    tailwindCSS = {
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidConfigPath = "error",
        invalidScreen = "error",
        invalidTailwindDirective = "error",
        invalidVariant = "error",
        recommendedVariantOrder = "warning",
      },
      validate = true,
      experimental = {
        classRegex = {
        },
      },
    },
  },
})

typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
  }
})

lspconfig["sumneko_lua"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
})
