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
vim.o.softtabstop = 2
vim.o.shiftround = true

------ Chores ------
vim.o.clipboard = 'unnamedplus'

------ Search ------
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

------ Colors -------
vim.o.termguicolors = true
vim.o.background = 'dark'

------ Font ------
vim.o.guifont = 'CascadiaCove NF Mono:h14'

------ Misc ------
vim.o.hidden = true
vim.o.mouse = 'a'
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.o.showmode = false
vim.o.showcmd = false
vim.o.showmatch = true
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.cmdheight = 1
vim.o.laststatus = 2
vim.o.cursorline = true
vim.o.lazyredraw = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.undofile = true
vim.o.list = true
vim.opt.listchars = {tab = '▸ ', trail = '·', extends = '>', precedes = '<', eol = '↴', nbsp = '␣'}

