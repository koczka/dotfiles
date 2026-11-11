vim.env.PATH = "/home/linuxbrew/.linuxbrew/opt/fzf" .. vim.env.PATH
local opt = vim.opt

--autoread file after external change
vim.opt.autoread = true

--cmdheight
opt.cmdheight = 6

-- line numbers
opt.relativenumber = false
opt.number = true

--disable swap file
vim.opt.swapfile = false

-- tabs and indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- char line on 80
-- opt.colorcolumn = "80"

-- clipboard
opt.clipboard = "unnamedplus"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- keyword
opt.iskeyword:append("-")

vim.opt.title = true
vim.opt.backup = false
