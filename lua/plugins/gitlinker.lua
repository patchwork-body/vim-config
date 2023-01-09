local ok, gitlinker = pcall(require, "gitlinker")

if not ok then
  vim.notify("gitlinker not installed", vim.log.levels.ERROR)
  return
end

gitlinker.setup()

