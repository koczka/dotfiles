return {
	-- quality of life plugins
	{ "nvim-lua/plenary.nvim" },
	{ "vim-scripts/ReplaceWithRegister" }, -- replace with register contents using motion (gr + motion)
	{ "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation
	{
		"brenoprata10/nvim-highlight-colors",
		opts = {
			render = "virtual",
		},
	},
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				extra_groups = {
					"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
					"NvimTreeNormal", -- NvimTree
					"NvimTreeEndOfBuffer",
				},
			})
		end,
	},
}
