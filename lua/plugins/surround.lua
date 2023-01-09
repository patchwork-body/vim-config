local ok, surround = pcall(require, 'nvim-surround')

if not ok then
  vim.notify('nvim-surround is not installed')
end

surround.setup()
