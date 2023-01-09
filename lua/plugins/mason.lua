local ok, mason = pcall(require, 'mason')

if not ok then
  vim.notify('mason not found', vim.log.levels.ERROR)
  return
end

local ok, mason_lspconfig = pcall(require, 'mason-lspconfig')

if not ok then
  vim.notify('mason-lspconfig not found', vim.log.levels.ERROR)
  return
end

mason.setup()

mason_lspconfig.setup {
  ensure_installed = {
    'html',
    'cssls',
    'tsserver',
    'tailwindcss',
    'sumneko_lua',
    'rust_analyzer',
  },
}
