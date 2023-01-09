-- This file can be loaded by calling `lua require('plugins.colorscheme')` from your init.lua

local ok, onedark = pcall(require, 'onedark')

if not ok then
    vim.notify("onedark colorcheme doesn't installed")
    return
end

onedark.setup {
    style = 'darker'
}

onedark.load()
