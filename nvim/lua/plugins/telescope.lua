return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{ "tsakirist/telescope-lazy.nvim" },
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
		},
		config = function()
			local opts = { noremap = true, silent = true }
			vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find files within current working directory, respects .gitignore
			vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- find string in current working directory as you type
			vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory
			vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers in current neovim instance
			vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags
			vim.keymap.set("n", "<leader>fn", "<cmd>Telescope noice<cr>", opts) -- list all notifications
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					file_ignore_patterns = {
						"node_modules",
						"png",
						"jpg",
					},

					layout_strategy = "horizontal",
					layout_config = {
						horizontal = {
							preview_width = 0.6,
							results_width = 0.4,
						},
						vertical = {
							mirror = false,
						},
						width = 0.87,
						height = 0.80,
						preview_cutoff = 120,
					},
					path_display = { "truncate" },
					file_sorter = require("telescope.sorters").get_fuzzy_file,
					generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
				},
			})

			telescope.load_extension("ui-select")
			telescope.load_extension("noice")
			telescope.load_extension("fzf")
		end,
	},
}
