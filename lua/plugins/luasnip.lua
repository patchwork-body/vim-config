local ok, luasnip = pcall(require, "luasnip.loaders.from_vscode")

if not ok then
  vim.notify("luasnip not installed", vim.log.levels.ERROR)
  return
end

luasnip.lazy_load()
