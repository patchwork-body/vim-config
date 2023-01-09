local ok, telescope = pcall(require, 'telescope')


if not ok then
  vim.notify('telescrope not installed')
  return
end

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')

