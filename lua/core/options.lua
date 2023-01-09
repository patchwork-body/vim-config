------ UI ------

-- show the line numbers on the left
vim.o.number = true

-- show the relative numbers lines from you current cursor position.
-- It's simplifies movements (for example: if you are on line 32 and want to jump on lines 15 you are no longer need
-- to manually calc the difference between those numbers - relative number will show you exact number
-- you need to press before use your move command, in our case in will be '17k' and line 15 will mark as 17) I hope you are got the point
vim.o.relativenumber = true

-- disable line wrapping
vim.o.wrap = false

------ Tabs & indentation ------
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

------ Chores ------
vim.o.clipboard = 'unnamedplus'

