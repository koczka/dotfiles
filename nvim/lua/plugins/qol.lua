return {
	-- quality of life plugins
	{ "nvim-lua/plenary.nvim" },
	{ "vim-scripts/ReplaceWithRegister" }, -- replace with register contents using motion (gr + motion)
	{ "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation
	{
		"brenoprata10/nvim-highlight-colors",
		opts = {
			render = "virtual",
			virtual_symbol = "■",
			virtual_symbol_prefix = " ",
		},
	},
	{
		"xiyaowong/transparent.nvim",
		opts = {
			extra_groups = {
				"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
				"NvimTreeNormal", -- NvimTree
				"NvimTreeEndOfBuffer",
			},
		},
	},
	{
		"tris203/precognition.nvim",
		config = {
			vim.keymap.set("n", "<leader>mp", ":Precognition peek<CR>", { noremap = true, silent = true }),
			startVisible = false,
		},
	},
}
