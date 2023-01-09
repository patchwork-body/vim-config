-- Set leader key
vim.keymap.set('n', '<space>', '<nop>', {noremap = true})
vim.g.mapleader = ' '

-- Escape from insert mode by pressing 'jk'
vim.keymap.set('i', 'jk', '<esc>', {noremap = true})

-- Reload neovim config
vim.keymap.set('n', '<leader>rvc', ':ReloadConfig<cr>', {noremap = terue})

