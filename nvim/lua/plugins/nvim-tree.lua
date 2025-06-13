return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		-- recommended settings from nvim-tree documentation
		vim.g.loaded = 1
		vim.g.loaded_netrwPlugin = 1
		vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

		-- configure nvim-tree
		require("nvim-tree").setup({
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
							arrow_closed = "",
							arrow_open = "",
						},
					},
				},
			},
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			view = {
				width = 45,
				adaptive_size = true,
			},
		})
	end,
}
