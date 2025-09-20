local keymap = vim.keymap
local bufopts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- disable arrow navigation in normal mode
keymap.set("n", "<Up>", "<nop>", bufopts)
keymap.set("n", "<Down>", "<nop>", bufopts)
keymap.set("n", "<Left>", "<nop>", bufopts)
keymap.set("n", "<Right>", "<nop>", bufopts)

-- clear search highlights
keymap.set("n", "<leader>cs", ":nohl<CR>", bufopts)

-- keymap for messages split
keymap.set("n", "<leader>me", ":messages<CR>", bufopts)

-- delete single character without copying into register
keymap.set("n", "x", '"_x', bufopts)

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", bufopts)
keymap.set("n", "<leader>sh", "<C-w>s", bufopts)
keymap.set("n", "<leader>se", "<C-w>=", bufopts)
keymap.set("n", "<leader>sx", ":close<CR>", bufopts)

keymap.set("n", "<leader>to", ":tabnew<CR>", bufopts)
keymap.set("n", "<leader>tx", ":tabclose<CR>", bufopts)
keymap.set("n", "<leader>tn", ":tabn<CR>", bufopts)
keymap.set("n", "<leader>tp", ":tabp<CR>", bufopts)

-- horizontal navigation
keymap.set("n", "<C-d>", "<C-d>zz", bufopts)
keymap.set("n", "<C-u>", "<C-u>zz", bufopts)
keymap.set("n", "{", "}zz", bufopts)
keymap.set("n", "}", "{zz", bufopts)

-- lazy.nvim ui
keymap.set("n", "<leader>la", ":Lazy<CR>", bufopts)

-- lsp
keymap.set("n", "<leader>dd", vim.diagnostic.setqflist, bufopts)
keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, bufopts)

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", bufopts)
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", bufopts)
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", bufopts)
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", bufopts)
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", bufopts)
keymap.set("n", "<leader>fn", "<cmd>Telescope noice<cr>", bufopts)

-- typescript fns
keymap.set("n", "<leader>oi", "<cmd>VtsExec organize_imports<cr>", bufopts)
keymap.set("n", "<leader>ru", "<cmd>VtsExec remove_unused<cr>", bufopts)
keymap.set("n", "<leader>mi", "<cmd>VtsExec add_missing_imports<cr>", bufopts)
