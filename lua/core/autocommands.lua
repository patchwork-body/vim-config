-- Format code on save
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

