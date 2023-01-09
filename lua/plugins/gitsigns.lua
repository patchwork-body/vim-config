local ok, gitsigns = pcall(require, "gitsigns")

if not ok then
  vim.notify("gitsigns not installed", vim.log.levels.ERROR)
  return
end

gitsigns.setup()
