local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- disable arrow navigation in normal mode
keymap.set("n", "<Up>", "<nop>")
keymap.set("n", "<Down>", "<nop>")
keymap.set("n", "<Left>", "<nop>")
keymap.set("n", "<Right>", "<nop>")

-- clear search highlights
keymap.set("n", "<leader>cs", ":nohl<CR>")

-- keymap for messages split
keymap.set("n", "<leader>me", ":messages<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", { noremap = true, silent = true }) -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- horizontal navigation
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "{", "}zz")
keymap.set("n", "}", "{zz")

-- lazy.nvim ui
keymap.set("n", "<leader>la", ":Lazy<CR>")
