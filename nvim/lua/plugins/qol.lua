return {
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	{ "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation
	{
		"numToStr/Comment.nvim", -- toggle comments (gc + motion)
		opts = {
			padding = true, -- add any options here
			toggler = {
				line = "gcc",
			},
		},
		lazy = true,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			whitespace = {
				remove_blankline_trail = false,
			},
			scope = {
				enabled = true,
			},
		},
	},
}
