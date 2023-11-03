-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- configure nvim-tree
nvimtree.setup({

	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	respect_buf_cwd = true,
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
					-- arrow_closed = "", -- arrow when folder is closed
					-- arrow_open = "", -- arrow when folder is open
				},
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			quit_on_open = true,
			window_picker = {
				enable = false,
			},
		},
	},
	view = {
		width = 45,
		adaptive_size = true,
		-- float = {
		-- 	enable = true,
		-- 	open_win_config = {
		-- 		relative = "editor",
		-- 		border = "rounded",
		-- 		width = 50,
		-- 		height = 60,
		-- 		row = 1,
		-- 		col = 1,
		-- 	},
		-- },
	},
})
