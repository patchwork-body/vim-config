local ok, null_ls = pcall(require, "null-ls")

if not ok then
  vim.notify("null-ls not found", vim.log.levels.ERROR)
  return
end

null_ls.setup({
  debug = false,

  sources = {
    -- lua
    null_ls.builtins.formatting.stylua,

    -- nodejs
    null_ls.builtins.diagnostics.prettier,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.formatting.stylelint,
    null_ls.builtins.diagnostics.stylelint,

    -- misc
    null_ls.builtins.completion.spell,
  },
})
