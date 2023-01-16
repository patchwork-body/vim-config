local ok, cmp = pcall(require, "cmp")

if not ok then
  vim.notify("cmp module not found", vim.log.levels.ERROR)
  return
end

local ok, lspkind = pcall(require, "lspkind")

if not ok then
  vim.notify("lspkind module not found", vim.log.levels.ERROR)
  return
end

vim.opt.completeopt = "menuone,noinsert,noselect"

cmp.setup {
  formatting = {
    format = lspkind.cmp_format({mode = 'symbol_text', maxwidth = 50, ellipsis_char = '…'})
  },
  snippet = {
    expand = function(args)
      local ok, luasnip = pcall(require, "luasnip")

      if not ok then
        vim.notify("luasnip module not found", vim.log.levels.ERROR)
        return
      end

      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "buffer" },
    { name = "path" },
    { name = "nvim_treesitter" },
  },
}

vim.cmd [[
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
