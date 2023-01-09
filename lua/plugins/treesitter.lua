-- This file can be loaded by calling `lua require('plugins.treesitter')` from your init.lua

local ok, treesitter_config = pcall(require, "nvim-treesitter.configs")

if not ok then
  vim.notify("nvim-treesitter is not installed")
  return
end

treesitter_config.setup({
  ensure_installed = {"lua", "rust", "typescript", "javascript"},
  auto_install = true,
})

