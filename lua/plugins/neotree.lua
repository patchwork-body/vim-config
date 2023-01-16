local ok, neotree = pcall(require, "neo-tree")

if not ok then
  vim.notify("neotree not installed", vim.log.levels.ERROR)
  return
end

neotree.setup({
  window = {
    auto_resize = true,
    auto_close = true,
    popup_border_style = "rounded",
    position = "float",
    mappings = {
      ["o"] = "open",
      ["O"] = "open_tabnew",
    }
  }
})

-- Toggle NeoTree
vim.keymap.set('n', '<leader>e', ':NeoTreeFloatToggle<CR>', {noremap = true})
vim.keymap.set('n', '<leader>o', ':NeoTreeFocus<CR>', {noremap = true})

