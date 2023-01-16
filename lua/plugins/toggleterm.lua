local ok, toggleterm = pcall(require, 'toggleterm')

if not ok then
  vim.notify('toggleterm not installed', vim.log.levels.ERROR)
  return
end

toggleterm.setup({
  autochdir = true,
})

vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>', {noremap = true})
vim.keymap.set('n', '<leader>tt', ':ToggleTerm direction=tab<CR>', {noremap = true})

