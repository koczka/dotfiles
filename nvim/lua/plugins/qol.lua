return {
	{ "nvim-tree/nvim-web-devicons" },
	{ "christoomey/vim-tmux-navigator" },
	{
		"numToStr/Comment.nvim",
		opts = {
			padding = true,
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
	{
		"szw/vim-maximizer", -- maximizes and restores current window
		config = function()
			vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization
		end,
	},
}
